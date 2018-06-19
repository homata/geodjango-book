# GeoDjango レシピ

Django/GeoDjangoで開発で、ちょっとしたコツを紹介します。

## プロジェクト名と設定ディレクトリ名を違うものにする
プロジェクト名と設定ディレクトリ名が同じ名前でわかりづらいということがあります。
この場合は、django-admin.pyでプロジェクトを作成するときに、設定ディレクトリを
わかりやすいディレクトリ名にするという方法もあります。

通常の場合
```python
(env) $ django-admin.py startproject myproj
myproj
├── manage.py
└── myproj
    ├── __init__.py
    ├── settings.py
    ├── urls.py
    └── wsgi.py
```

設定ディレクトリ名を変更した場合
```python
(env) $ mkdir myproj
(env) $ cd myproj
(env) $ django-admin.py startproject config .
myproj
├── config
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
└── manage.py
```

## Djangoの環境変数
設定ファイルのsettings.pyにパスワードやAPIキー等を直接に値を記述をすると
GitHub等で管理したソースコードからパスワードが漏洩する恐れがあります。
環境変数ファイルから値を読み込むようにしておくとこれを防ぐことが出来ます。

```python
(env)$ pip install django-environ
```

```python
(env)$ vi .env
# PostgreSQL
POSTGRES_ENGINE=django.db.backends.postgresql_psycopg2
POSTGRES_DATABASE=5952
POSTGRES_USER=postgres
POSTGRES_PASSWORD=
POSTGRES_HOST=127.0.0.1
POSTGRES_PORT=5432
```

```python
(env)$ vi config/settings.py
import environ
root = environ.Path(__file__) - 3
env = environ.Env(DEBUG=(bool, False),)
environ.Env.read_env()

SITE_ROOT = root()

DEBUG = env('DEBUG')
TEMPLATE_DEBUG = DEBUG

# for postgres
DATABASES = {
    'default': {
        'ENGINE': os.environ['POSTGRES_ENGINE'],
        'NAME': os.environ['POSTGRES_DATABASE'],
        'USER': os.environ['POSTGRES_USER'],
        'PASSWORD': os.environ['POSTGRES_PASSWORD'],
        'HOST': os.environ['POSTGRES_HOST'],
        'PORT': os.environ['POSTGRES_PORT']
    }
}
```

## GeoDjangoでGeoJSON Tile Layer
[django-geojson](https://pypi.org/project/django-geojson/)をインストールすると
「Tiled GeoJSON layer view」というViewが利用することが出来ます。

これに、JavaScriptライブラリの[Leaflet GeoJSON Tile Layer](https://github.com/glenrobertson/leaflet-tilelayer-geojson/)を
組み合わせるとGeoJSONをタイルで読み込むことが出来ます。
ただし、Leaflet GeoJSON Tile LayerがLeaflet 0.7.7にしか対応してないこともあるので、紹介までに留めて起きます

[django-geojson document](https://django-geojson.readthedocs.io/en/latest/index.html)には、
他にも機能があるのでドキュメントを参考にしてみてください。

```python
(env)$ pip install django-geojson
```
