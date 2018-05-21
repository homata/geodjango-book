gitbook
----
### gitbook

* [gitbook](https://www.gitbook.com/)
* [最低限の知識で gitbook を利用する](https://qiita.com/ma2saka/items/ca6e317ade2e3c13bdc9)

### インストール

gitbook-cliをインストールする。

    $ npm install -g gitbook-cli

出力先としてPDFとかepubを利用したい場合、calibreもインストールする必要がある。

    $ brew cask install calibre


### プロジェクトの作成


    $ gitbook init

book.jsonを編集

    言語設定を ja  
    SNS/GitHubでのシェアボタンを非表示  

''' book.json
{
    "plugins": ["-sharing","hide-published-with"],
    "language": "ja"
}
''' 

book.json を作成したらプラグインのインストールを実行する。

    $ gitbook install

動作確認

    $ gitbook serve --open


SUMMARY.mdを編集したら、もう一度 gitbook init を実行する。そうすると、SUMMARY.md に記述されているファイルで存在しないものを自動的に作成してくれる。

    $ gitbook init



h1が見づらいのでCSSを置く
デフォルトのCSSだとh1とh2のスタイルが区別しづらいため、h1を少し目立たせることにする。

stylesディレクトリを作成し、website.cssとpdf.css、epub.cssを作成する。

    $ mkdir styles/
    $ echo "h1 { border-bottom: 2px solid #000; padding-bottom:3px;}" > styles/website.css
    $ echo "h1 { border-bottom: 2px solid #000; padding-bottom:3px;}" > styles/pdf.css
    $ echo "h1 { border-bottom: 2px solid #000; padding-bottom:3px;}" > styles/epub.css

HTMLの生成
出力先はデフォルトでは _book/

    $ gitbook build

PDFの生成

    $ gitbook pdf


