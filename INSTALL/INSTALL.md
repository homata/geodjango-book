インストール
========
GeoDjangoで開発する為に必要なライブラリをインストールします

* Python3.5以上
* PostgreSQL 9.5以上
    - PostGIS 2.x以上
* OSGeo4W (GISライブラリ)
    - GDAL(Geospatial Data Abstraction Library) 
    - GEOS (Geometry Engine, Open Source) 
    - PROJ4 (Cartographic Projections Library) 

# Pythonのインストール

Python 3.6のインストール方法の説明をWidowsとMac(OSX)の環境で説明します

<u>**Pythonインストール参考**</u>
* python.jpの環境構築ガイド - https://www.python.jp/install/install.html
* Python Boot Campのテキスト - http://pycamp.pycon.jp/textbook/1_install.html

### **<u>Windows</u>**

Windowsのシステム情報でシステムの種類が32-bitバージョンか64-bitバージョンかを確認してください。  
(例）コントロールパネル>システムとセキュリティ>システムを開く
<div align="center" style="margin-bottom:50px">
    <img src="images/windows/000.png" width=60% style="border:1px #000 solid;">
</div>

Python for Windowsを <https://www.python.org/downloads/windows/>　から最新版の「Latest Python 3 Release - Python 3.6.5」(2018年6月4日現在)をダウンロードしてください。

    Python Releases for Windows    
        Latest Python 3 Release - Python 3.6.5
        Latest Python 2 Release - Python 2.7.15

<div align="center" style="margin-bottom:50px;margin-top:30px"">
    <img src="images/windows/001.png" width=60% style="border:1px #000 solid;">
</div>

Widnowsの環境によってダウンロードするファイルが違いますのでご注意ください。
* 64ビット版のWindowsの場合
    -  "Windows x86-64 executable installer" (Windows x86-64実行可能インストーラー)をダウンロードしてください。 
* 32ビット版のWindowsの場合 
    - "Windows x86 executable installer" (x86実行可能インストーラー)をダウンロードしてください

<div align="center" style="margin-bottom:50px;margin-top:30px"">
    <img src="images/windows/002.png" width=60% style="border:1px #000 solid;">
</div>

インストーラをダブルクリックして実行します。ダイアログが表示されるので、
「Add Python 3.x to Path」を忘れずに必ずチェックしてから「Install Now」をクリックします。

<div align="center" style="margin-bottom:50px;margin-top:30px"">
    <img src="images/windows/003.png" width=60% style="border:1px #000 solid;">
</div>

インストーラーが実行されるので、終了まで待ちます。
<div align="center" style="margin-bottom:50px;margin-top:30px"">
    <img src="images/windows/004.png" width=60% style="border:1px #000 solid;">
</div>

インストーラーが終了するとダイアログが表示されるので「Close」ボタンをクリックして終了します。
<div align="center" style="margin-bottom:50px;margin-top:30px"">
    <img src="images/windows/005.png" width=60% style="border:1px #000 solid;">
</div>

コマンドプロンプトを実行します。  
例）スタートメニュー→すべてのプログラム→アクセサリ→コマンドプロンプト
<div align="center" style="margin-bottom:50px;margin-top:30px"">
    <img src="images/windows/006.png" width=60% style="border:1px #000 solid;">
</div>

コマンドプロンプトが実行されます。
<div align="center" style="margin-bottom:50px;margin-top:30px"">
    <img src="images/windows/007.png" width=60% style="border:1px #000 solid;">
</div>

「python -V」を入力して、Pythonがインストールされたバージョンを確認します。

    例）python -V

<div align="center" style="margin-bottom:50px;margin-top:30px"">
    <img src="images/windows/008.png" width=60% style="border:1px #000 solid;">
</div>

<u>**注意**</u><br>
パソコンの環境によって「python」ではなく「python3」となる場合があります。パソコンの環境を確認ください。「python3」だった場合はこれ以降は「python」を「python3」と読みかえてください

    例）$ python3 -V

pipのバージョンも確認します。pipも、Pythonと同様に環境によりpip3となる場合があります。これも「pip」を「pip3」と読みかえてください

    $ pip3 --version
    pip 9.0.3 from xxx (python 3.6)

### **<u>Mac(OSX)</u>**


Python for Macを <https://www.python.org/downloads/mac-osx/>　から最新版の「Latest Python 3 Release - Python 3.6.5」(2018年6月4日現在)をダウンロードしてください。

    Python Releases for Mac OS X
        Latest Python 3 Release - Python 3.6.5
        Latest Python 2 Release - Python 2.7.15


OSの環境によって、macOS 64-bit/32-bit installer(for Mac OS X 10.6 and later)または、macOS 64-bit installer（for OS X 10.9 and later）を選択してダウンロードしてください。
ダウンロードされたら、pkgファイル（python-3.6.5-macosx10.6.pkg）をクリックしてインストーラーを実行してください。

インストールが正しく行われたか確認するために、 ターミナルを開いて「python3」もしくは「python」コマンドをタイプしてみてください

    $ python -V
    Python 3.6.5

<u>**注意**</u><br>
Macの場合、デフォルトでpython2がインストールされています。必ずバージョンを確認して
「python -V」が2系だった場合は、「python3」を使うようにしてください。「python3」だった場合はこれ以降は「python」を「python3」と読みかえてください

    $ python -V
    Python 2.7.14

    $ python3 -V
    Python 3.6.5

pipのバージョンも確認します。pipも、Pythonと同様に環境によりpip3となる場合があります。これも「pip」を「pip3」と読みかえてください

    $ pip3 --version
    pip 9.0.3 from xxx (python 3.6)


# PostgreSQLのインストール

### **<u>Windows</u>**
 
<u>**参考**</u><br>
 * [GeoDjango Installation - Install Windows](https://docs.djangoproject.com/en/2.0/ref/contrib/gis/install/#windows)


Enterprise DBのWebサイトから PostgreSQL 9.x　のインストーラー <https://www.enterprisedb.com/downloads/postgres-postgresql-downloads>をダウンロードします。

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/100.png" width=60% style="border:1px #000 solid;">
</div>

インストーラを実行し画面の指示に従いデフォルトのオプションでインストールしてください。

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/101.png" width=60% style="border:1px #000 solid;">
</div>


PostgreSQLインストーラはpostgresデータベースのスーパーユーザーを作成します。
パスワードは忘れないようにしてください。

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/103.png" width=60% style="border:1px #000 solid;">
</div>

ポート番号はデフォルトの5432を設定します。

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/104.png" width=60% style="border:1px #000 solid;">
</div>

localeは「Japan」を選択します。

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/105.png" width=60% style="border:1px #000 solid;">
</div>

準備よければこれでインストールを開始します。

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/106.png" width=60% style="border:1px #000 solid;">
</div>

インストールが開始されるので、インストーラが完了するまで待ちます。

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/107a.png" width=60% style="border:1px #000 solid;">
</div>

インストーラが完了すると、終了時にApplication Stack Builder（ASB）を起動するか質問されます。<br> PostGISをインストールする必要があるため、このチェックボックスをオンにします。

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/108.png" width=60% style="border:1px #000 solid;">
</div>

スタックビルダ(ASB)が起動されるので、インストールされたPostgreSQLを選択します

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/109a.png" width=60% style="border:1px #000 solid;">
</div>

Spatial ExtensionsからPostGIS 2.4を選択します

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/110.png" width=60% style="border:1px #000 solid;">
</div>

下記の拡張の一緒にインストールされます。

    PostGIS 2.3.7 bundle includes PostGIS 2.3.7 w GDAL 2.2.4, GEOS 3.6.2,
    Proj4.9.3, pgRouting 2.6.0, ogr_fdw 1.0.5  spatial foreign data wrapper
    extension, and pgPointcloud 1.1.0dev.
    http://postgis.net/2018/04/06/postgis-patches/

    PostGIS "spatially enables" the PostgreSQL server, allowing it to be used 
    as a backend spatial database for geographic information systems (GIS).
    PostGIS follows the OpenGIS "Simple Features Specification for SQL" and 
    has been certified as compliant with the "Types and Functions" profile. 

    https://github.com/pgRouting/pgrouting/releases/tag/v2.6.0
    pgRouting extensions PostGIS for building routing applications

    https://github.com/pramsey/pgsql-ogr-fdw
    ogr_fdw allows you to query flat files, relational databases, and web
    services to name a few.  Spatial columns get transformed to PostGIS 
    geometry columns.

    https://github.com/pgpointcloud/pointcloud
    pgPointcloud introduces specialty types for storing point cloud data 
    loaded from LIDAR.


ダウンロードディレクトリを選択します

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/111.png" width=60% style="border:1px #000 solid;">
</div>

ダウンロードされたら「次へ」ボタンを選択します。

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/112.png" width=60% style="border:1px #000 solid;">
</div>


ライセンスを読んだら「I Agree」ボタンを選択します。

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/113.png" width=60% style="border:1px #000 solid;">
</div>

PostGISがチェックされていることを確認し「Next」ボタンを選択します。

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/114.png" width=60% style="border:1px #000 solid;">
</div>

インストールディレクトリを確認し「Next」ボタンを選択します。

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/115.png" width=60% style="border:1px #000 solid;">
</div>

インストールが開始されます。

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/116.png" width=60% style="border:1px #000 solid;">
</div>

環境設定の画面で「はい」を選択します。
環境設定GDAL_DATAに"C:\Program Files\PostgreSQL\9.6\gdal-data"が設定されます

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/117.png" width=60% style="border:1px #000 solid;">
</div>

デフォルトの設定はそのままで「はい」を選択します。
環境設定POSTGIS_GDAL_ENABLED_DRIVERSに"GTiff PNG JPEG GIF XYZ DTED USGSDEM AAIGrid"が設定されます

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/118.png" width=60% style="border:1px #000 solid;">
</div>

デフォルトの設定はそのままで「はい」を選択します。
環境設定POSTGIS_ENABLE_OUTDB_RASTERSに"1"が設定されます

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/119.png" width=60% style="border:1px #000 solid;">
</div>

インストールが終了したら「Close」を選択します。

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/120.png" width=60% style="border:1px #000 solid;">
</div>

スタックビルダを終了します

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/121.png" width=60% style="border:1px #000 solid;">
</div>

正常にインストールされた場合、メニューの「PostGIS」のグループが作成されます。
PostgreSQLサーバはWindowsが起動時に自動で実行されるように設定されます。

Windows10の場合
<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/122.png" width=60% style="border:1px #000 solid;">
</div>


##### PostgreSQL/PostGIS環境変数、パスの設定

「ユーザー環境変数」に設定をします。

[Windowsシステム・ツール] →［コントロールパネル］→［システムとセキュリティ］→［システム］と進み、画面左にある［システムの詳細設定］をクリックする。

Windows10の場合
<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/130.png" width=60% style="border:1px #000 solid;">
</div>

ウィンドウの［環境変数］ボタンをクリック。

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/131.png" width=60% style="border:1px #000 solid;">
</div>

「C:\Program Files\PostgreSQL\9.6\bin」(PostgreSQLをインストールしたディレクトリ)をPATH変数に追加します。

**「ユーザー環境変数」の一覧に「Path」がある場合**<br>
「Path」を選択した後［編集］ボタンをクリックして「C:\Program Files\PostgreSQL\9.6\bin」を追加します

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/132.png" width=60% style="border:1px #000 solid;">
</div>

**「ユーザー環境変数」の一覧に「Path」がない場合**<br>
[新規］ボタンをクリックし、変数名に「Path」、変数値に「C:\Program Files\PostgreSQL\9.6\bin」を入力します。

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/133.png" width=60% style="border:1px #000 solid;">
</div>

Windowsメニューから「コマンドプロンプト」を起動して、Pathの設定が有効か確認します。

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/134.png" width=60% style="border:1px #000 solid;">
</div>

「コマンドプロンプト」で「psql -U postgres -l」と入力してインストールの時に設定した管理パスワードを入力してデータベース一覧を表示してみます

<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/135.png" width=60% style="border:1px #000 solid;">
</div>

「コマンドプロンプト」で「ogr2ogr --version」と入力して、GDALのツールがインストールされているかを確認します。


<div align="center" style="margin-bottom:50px;margin-top:30px">
    <img src="images/windows/136.png" width=60% style="border:1px #000 solid;">
</div>


### **<u>Mac(OSX)</u>**

<u>**参考**</u><br>
* [GeoDjango Installation - Install Mac](https://docs.djangoproject.com/en/2.0/ref/contrib/gis/install/#macos)

Homebrew (パッケージ管理システム) を使用してインストールをします。
Homebrewをインストールしてない場合は、Homebrew公式サイト <https://brew.sh/index_ja> を参考にしてHomebrewをインストールしてください。

Homebrewインストール参考<br>
MacにHomebrewを導入する方法 - https://qiita.com/balius_1064/items/ac7dff5ef10eaf69996f

    インストール方法
    1. AppStoreでXcodeのインストール
    2. コマンドライン・デベロッパ・ツールのインストール
        $ xcode-select --install
    3. Homebrewのインストール
        $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    4.確認
        $ brew doctor
        Your system is ready to brew.
    となっていれば導入成功です。

下記のbrewコマンドを入力してPostgreSQL/PostGIS/GISライブラリのインストール
をします。

    $ brew install postgresql
    $ brew install postgis
    $ brew install gdal


PostgreSQLの起動

    $ pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start

    $ psql --version
    psql (PostgreSQL) 9.6

    データベース確認
    $ psql -U postgres -l
                                List of databases
        Name     |  Owner   | Encoding | Collate | Ctype | Access privileges
    -------------+----------+----------+---------+-------+-------------------
    postgres    | homata   | UTF8     | C       | C     |
    template0   | homata   | UTF8     | C       | C     | =c/homata        +
                |          |          |         |       | homata=CTc/homata
    template1   | homata   | UTF8     | C       | C     | =c/homata        +
                |          |          |         |       | homata=CTc/homata
    (xx rows)

PostgreSQLの停止

    $ pg_ctl -D /usr/local/var/postgres stop
