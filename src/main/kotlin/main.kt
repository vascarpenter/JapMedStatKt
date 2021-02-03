// JapMedStatKt <filename_SJIS.txt>

import java.io.File
import java.nio.charset.Charset
import java.sql.DriverManager
import java.sql.ResultSet
import java.sql.Statement
import java.sql.Connection
import java.text.Normalizer

fun findName(conn:Connection , name:String): String {
    var statement: Statement? = null
    statement = conn?.createStatement()
    var resultSet: ResultSet? = null
    resultSet = statement?.executeQuery("SELECT VALUE FROM JAPMEDSTAT WHERE NAME='${name}'")
    while(resultSet?.next() ?: false) {
        var str = resultSet!!.getString(1)
        resultSet?.close()
        statement?.close()
        return str
    }
    resultSet?.close()
    statement?.close()
    return ""
}

fun main(args: Array<String>) {
    var conn: Connection? = null
    var drugblock: Boolean = false
    var dbstr: String = ""
    var assessblock: Boolean = false
    var abstr: String = ""

    try {
        var file: File;
        if( args.size<2)
        {
            file = File("/Users/gikoha/IdeaProjects/JapMedStatKt/drug20210125.txt")
        } else {
            file = File(args[1])
        }
        val bufferedReader = file.bufferedReader(Charset.forName("MS932"))

        conn = DriverManager.getConnection("jdbc:oracle:thin:@//192.168.11.1:1521/XEPDB1", "admin", "hogehogeA00")

        bufferedReader.readLines().forEach { line ->
            var linex = line.trim()
            if (linex=="" || linex.startsWith("A)"))
            {
                // skip
            }
            else if (linex.startsWith("# "))
            {
                if (drugblock)
                {
                    // drug block end, starts assessment block
                    println(dbstr)
                    abstr = linex + "\n"
                    assessblock = true
                    drugblock = false
                }
                else
                {
                    abstr = abstr + linex + "\n"
                }

            }
            else if (Regex("""^([0-9]+)y([0-9]+)m(.*)$""").containsMatchIn(linex))
            {
                if (assessblock)
                {
                    // assessment block end, starts drug block
                    println(abstr)
                    dbstr = ""
                    drugblock = true
                    assessblock = false
                }

                val match = Regex("""^([0-9]+)y([0-9]+)m(.*)$""").find(linex)
                println("\n" + match!!.groups[1]!!.value+ "歳 " + match!!.groups[2]!!.value + "ヶ月  " + match!!.groups[3]!!.value)

                drugblock = true
            }
            else if (drugblock)
            {
                var liney = linex
                if (liney.contains("錠") ||
                    liney.contains("坐剤") ||
                    liney.contains("ガーグル") ||
                    liney.contains("シロップ") ||
                    liney.contains("cap") ||
                    liney.contains("mL") ||
                    liney.contains("個") ||
                    liney.contains("枚") ||
                    liney.contains("散") ||
                    liney.contains("粒") ||
                    liney.contains("テープ") ||
                    liney.contains("ＤＳ") ||
                    liney.contains("注"))
                {
                    liney = liney.replace("""（.*）""".toRegex(),  "")
                    liney = Normalizer.normalize(liney,Normalizer.Form.NFKC)    // 半角⇒全角変換
                    if (Regex("""([ァ-ンＡ-Ｚー塩化酸・]+)(.*)""").containsMatchIn(liney))
                    {
                        val match = Regex("""([ァ-ンＡ-Ｚー塩化酸・]+)(.*)""").find(liney)
                        var matchstr1: String = match!!.groups[1]!!.value
                        var matchstr = findName(conn, matchstr1)
                        if (matchstr != "")
                        {
                            dbstr = dbstr + liney + "  " + matchstr + "\n"
                        }
                        else
                        {
                            dbstr = dbstr + liney + "  ?$matchstr1?\n"
                        }
                    }
                    else
                    {
                        dbstr = dbstr + liney + "\n"
                    }
                }
                else if (assessblock)
                {
                    if (linex.startsWith("# "))
                    {
                        abstr = abstr + linex + "\n"
                    }
                }
            }
        }
        // flush blocks
        if (drugblock)
        {
            println(dbstr)
        }
        if (assessblock)
        {
            println(abstr)
        }

    } catch (e: Exception) {
        println(e)
    } finally {
        conn?.close()
    }
}

