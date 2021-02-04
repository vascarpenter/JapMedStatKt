--------------------------------------------------------
--  ファイルを作成しました - 木曜日-2月-04-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table JAPMEDSTAT
--------------------------------------------------------

  CREATE TABLE "ADMIN"."JAPMEDSTAT" 
   (	"NAME" NVARCHAR2(255) COLLATE "USING_NLS_COMP", 
	"VALUE" NVARCHAR2(255) COLLATE "USING_NLS_COMP"
   )  DEFAULT COLLATION "USING_NLS_COMP" SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "DATA" ;
REM INSERTING into ADMIN.JAPMEDSTAT
SET DEFINE OFF;
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ムコソルバン','8301');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('パリエット','0001');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アゼルニジピン','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('フランドルテープ','2601');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ベニジピン塩酸塩','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('セレコキシブ','7102');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('エナラプリルマレイン酸塩','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('カンデサルタン','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アトルバスタチン','1316');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ミネブロ','2312');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('クエン酸','1204');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('エパルレスタット','6911');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('キネダック','6911');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ボグリボース','0836');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('セイブル','0836');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('グルコバイ','0836');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('スージャヌ','0836');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('フロセミド','2301');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('サムスカ','2301');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ラシックス','2301');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ルプラック','2301');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ダイアート','2301');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アーチスト','2002');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('カルベジロール','2002');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ビソプロロール','2002');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('メインテート','2002');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('サンリズム','2002');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ベラパミル','2002');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('シベノール','2002');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ベラパミル塩酸塩','2002');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ビソプロロールフマル酸塩','2002');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('タケルダ','1911+0001');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アスパラカリウム','0907');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ランソプラゾール','0001');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('タケキャブ','0001');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('オメプラール','0001');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('タケプロン','0001');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ネキシウムカプセル','0001');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('モサプリドクエン酸塩','0035');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('セララ','2312');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('スピロノラクトン','2312');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ジャディアンス','0810');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ノボラピッド','0810');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ノボリン','0810');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('トラゼンタ','0810');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('フォシーガ','0810');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('エクメット','0810');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('メトホルミン','0810');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('デベルザ','0810');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('カナリア','0810');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('メトグルコ','0810');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('エクア','0810');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アシノン','0001');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アマリール','0810');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('マグネシウム','0420');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アルダクトン','2312');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('シロスタゾール','1911');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('プレタール','1911');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('エフィエント','1911');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アンプラーグ','1911');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('リマプロストアルファデクス','2907');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('クロピドグレル','1911');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('バイアスピリン','1911');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('テルミサルタン','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ミカルディス','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アダラートＣＲ','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('オルメサルタン','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アダラート','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('カルデナリン','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('エナラート','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ニフェジピン','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ペリンドプリルエルブミン','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ロサルタンカリウム','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ザクラス','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アムロジピン','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('レザルタス','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('オルメテック','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('コバシル','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アバプロ','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アイミクス','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ユニシア','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アイトロール','2601');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('シグマート','2601');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ニコランジル','2601');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('リクシアナ','1001');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('イグザレルト','1001');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('プラザキサ','1001');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('エリキュース','1001');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ワーファリン','1001');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('クレストール','1316');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('シンバスタチン','1316');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('メバロチン','1316');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('リピトール','1316');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ロスバスタチン','1316');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ロスーゼット','1316');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アロプリノール','6409');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('フェブリク','6409');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('カルボシステイン','8301');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アスベリン','8301');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('カルボシステインＤＳ','8301');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ホクナリンテープ','8102');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('トピロリック','6409');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('トリアゾラム','7304');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ブロチゾラム','7304');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アメジニウムメチル','2701');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('メリスロン','0219');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ロゼレム','7304');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アミティーザカプセル','0416');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('リンゼス','0416');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ラックビー','0726');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('セルベックス','0035');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('酸化マグネシウム','0426');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('塩化ナトリウム','0907');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('フェロ・グラデュメット','1204');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ツロブテロールテープ','8102');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アンヒバ','7102');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ボルタレン','7102');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('カロナール','7102');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ロキソニン','7102');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('リレンザ','5302');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('タミフル','5302');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('タミフルドライシロップ','5302');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('マーズレンＳ','0035');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ＰＬ','7145');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ポピヨドンガーグル','5501');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ＳＰトローチ','9132');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ジクロフェナクナトリウムテープ','7139');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ロコアテープ','7139');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('フロモックス','5101');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ベタヒスチンメシル酸塩','0219');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ドンペリドン','0202');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ラニラピッド','2108');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('バップフォー','4904');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ヘルベッサー','2002');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('エディロールカプセル','0962');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ムコダイン','8301');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アズレンスルホン酸','0035');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('オパルモン','2907');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('プラバスタチン','1316');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('プラザキサカプセル','1001');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ニトロダームＴＴＳ','2601');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('コンプラビン','1911');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ナトリックス','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('トラディアンス','0810');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('パルモディア','1316');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ベルソムラ','7304');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アムロジンＯＤ','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ムコソルバンＬ','8301');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('コニール','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('リバロ','1316');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ミカムロ','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ランタス','0810');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('トルリシティ','0810');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アルファカルシドールカプセル','0962');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ウルソデオキシコール酸','0322');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ユリーフ','4906');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('インスリングラルギン','0810');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ポリフル','0726');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('モーラステープ','7139');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('メチコバール','0901');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ノイロトロピン','0971');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('リリカ','7101');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('パロキセチン','7301');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アーガメイトゼリー','0982');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('レニベース','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('イニシンク','0810');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('セルタッチパップ','7139');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('チラーヂン','4412');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('エンレスト','2124');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アミオダロン塩酸塩','2002');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('メルカゾール','4413');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アトーゼット','1316');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('センノシド','0416');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ハーフジゴキシン','2002');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アカルボース','0836');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('メトホルミン塩酸塩','0836');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アムロジン','2201');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アボルブカプセル','4904');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('クラリスロマイシン','5101');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ワソラン','2002');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ビムパット','7299');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('イーケプラ','7299');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ベラプロスト','2402');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('ベサコリン','0038');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('メコバラミン','0901');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('アレンドロン酸','0962');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('フェルビナクテープ','7139');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('オメプラゾール','0001');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('エベレンゾ','1203');
Insert into ADMIN.JAPMEDSTAT (NAME,VALUE) values ('シロドシン','4904');
--------------------------------------------------------
--  Constraints for Table JAPMEDSTAT
--------------------------------------------------------

  ALTER TABLE "ADMIN"."JAPMEDSTAT" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "ADMIN"."JAPMEDSTAT" MODIFY ("VALUE" NOT NULL ENABLE);
