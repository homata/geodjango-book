##### psycopg2

psycopg2 Pythonモジュールは、PythonとPostgreSQLデータベース間のインタフェースを提供します。 お使いのPythonとPostgreSQLのバージョンに対応した最新の[Windowsインストーラ](http://www.stickpeople.com/projects/python/win-psycopg/) をダウンロードし、デフォルトの設定を使用して実行してください。

#### OSGeo4W (GISライブラリ)
- GDAL(Geospatial Data Abstraction Library) 
- GEOS (Geometry Engine, Open Source) 
- PROJ4 (Cartographic Projections Library) 

OSGeo4Wインストーラは、GeoDjangoが必要とするPROJ.4、GDAL、GEOSライブラリを簡単にインストールできます。 まず、OSGeo4Wインストーラ <https://trac.osgeo.org/osgeo4w/wiki/OSGeo4W_jp> をダウンロードして実行します。 Express Web-GIS Installを選択して、nextをクリックします。 [パッケージの選択]リストで、[GDAL]が選択されていることを確認します。 MapServerとApacheもデフォルトで有効になっていますが、GeoDjangoでは必須ではないため、安全にチェックが外される可能性があります。 次をクリックすると、パッケージが自動的にダウンロードされ、インストールされます。その後、インストーラを終了することができます。

Windows環境の変更
GeoDjangoを使用するには、PythonとOSGeo4WのディレクトリをWindowsシステムのPathに追加し、GDAL_DATAとPROJ_LIB環境変数を作成する必要があります。 cmd.exeで実行可能な以下のコマンドセットは、これを設定します：


    set OSGEO4W_ROOT=C:\OSGeo4W
    set PYTHON_ROOT=C:\Python3X
    set GDAL_DATA=%OSGEO4W_ROOT%\share\gdal
    set PROJ_LIB=%OSGEO4W_ROOT%\share\proj
    set PATH=%PATH%;%PYTHON_ROOT%;%OSGEO4W_ROOT%\bin
    reg ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /t REG_EXPAND_SZ /f /d "%PATH%"
    reg ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v GDAL_DATA /t REG_EXPAND_SZ /f /d "%GDAL_DATA%"
    reg ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v PROJ_LIB /t REG_EXPAND_SZ /f /d "%PROJ_LIB%"

Note
PythonまたはOSGeo4Wのインストールディレクトリをカスタマイズした場合は、それに応じてOSGEO4W_ROOTおよび/またはPYTHON_ROOT変数を変更する必要があります。




