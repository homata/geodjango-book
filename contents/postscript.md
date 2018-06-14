# おわりに

* この資料のURL - https://github.com/homata/geodjango-book
* サンプルソースコード - https://github.com/homata/geodjango-hands-on
* 使用GeoJSONファイル
    - 国土数値情報　バス停留所データ 
    - https://github.com/homata/geodjango-hands-on/blob/master/world/data/busstop.geojson
    - 国土数値情報　小学校区データ 
    - https://github.com/homata/geodjango-hands-on/blob/master/world/data/elementary_school.geojson
    - 国土数値情報　行政区域データ 
    - https://github.com/homata/geodjango-hands-on/blob/master/world/data/hokkaido.geojson
    - 国土数値情報　公共施設データ 
    - https://github.com/homata/geodjango-hands-on/blob/master/world/data/public_facility.geojson

サンプルソースコード
```
├── LICENSE
├── README.md
├── geodjango
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   └── wsgi.py
├── manage.py
├── requirements.txt
└── world
    ├── __init__.py
    ├── admin.py
    ├── apps.py
    ├── data
    │   ├── busstop.geojson
    │   ├── elementary_school.geojson
    │   ├── hokkaido.geojson
    │   └── public_facility.geojson
    ├── load_busstop.py
    ├── load_elementary_school.py
    ├── load_hokkaido.py
    ├── load_public_facility.py
    ├── migrations
    │   ├── 0001_initial.py
    │   └── __init__.py
    ├── models.py
    ├── serializers.py
    ├── static
    │   └── world
    │       ├── css
    │       │   └── app.css
    │       ├── images
    │       │   └── favicon.ico
    │       └── js
    │           └── app.js
    ├── templates
    │   └── world
    │       └── index.html
    ├── tests.py
    ├── urls.py
    └── views.py
```

