// java -jar JapMedStatKt.jar <filename_SJIS.txt>

import java.io.File
import java.nio.charset.Charset
import java.sql.DriverManager
import java.sql.ResultSet
import java.sql.Statement
import java.sql.Connection
import java.text.Normalizer
import kotlin.system.exitProcess

data class DrugDB(var name:String, var value:String)

fun findName(list: List<DrugDB>, name:String): String
{
    list.forEach {
        if(it.name == name)
        {
            return it.value
        }
    }
    return ""
}

fun main(args: Array<String>) {
    var conn: Connection? = null
    var drugblock = false
    var dbstr = ""
    var assessblock = false
    var abstr = ""

    try {
        if(args.isEmpty())
        {
            System.err.println("usage: java -jar JapMedStatKt.jar <filename_sjis.txt>")
            exitProcess(1)
        }
        val file = File(args[0])
        val bufferedReader = file.bufferedReader(Charset.forName("MS932"))

        // parse OCISTRING env variable and use IP/userid/pass
        val ocistring = System.getenv("OCISTRING") ?: "user/pass@//localhost/XEPDB1"
        val match = Regex("""^([a-zA-Z0-9]+)/([a-zA-Z0-9]+)@(.*)$""").find(ocistring)
        if(match==null)
        {
            System.err.println("please setenv OCISTRING as 'user/pass@//localhost/XEPDB1'")
            exitProcess(1)
        }
        val jdbcuser = match.groups[1]!!.value
        val jdbcpass = match.groups[2]!!.value
        val jdbcthinstr = "jdbc:oracle:thin:@" +  match.groups[3]!!.value

        conn = DriverManager.getConnection(jdbcthinstr, jdbcuser, jdbcpass)

        // read all data from db table to data class
        val dbarray: MutableList<DrugDB> = mutableListOf()
        val statement: Statement? = conn?.createStatement()
        val resultSet: ResultSet? = statement?.executeQuery("SELECT NAME,VALUE FROM JAPMEDSTAT")
        while(resultSet?.next() == true) {
            val name = resultSet!!.getString(1)
            val value = resultSet.getString(2)
            val unit = DrugDB(name,value)
            dbarray.add(unit)
        }
        resultSet?.close()
        statement?.close()

        // read all from file
        bufferedReader.readLines().forEach { line ->
            val linex = line.trim()
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
                println("\n" + match!!.groups[1]!!.value+ "歳 " + match.groups[2]!!.value + "ヶ月  " + match.groups[3]!!.value)

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
                        val matchstr1: String = match!!.groups[1]!!.value
                        val matchstr = findName(dbarray, matchstr1)
                        if (matchstr != "")
                        {
                            dbstr = "$dbstr$liney  $matchstr\n"
                        }
                        else
                        {
                            dbstr = "$dbstr$liney  ?$matchstr1?\n"
                        }
                    }
                    else
                    {
                        dbstr = "$dbstr$liney\n"
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

