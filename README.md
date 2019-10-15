# layout_change_jp_to_us_using_AHI
日本語環境下においてUS,JPキーボードを混在させる場合、これまではRegistryの特定部分を変更、追加することができたが、最新のビルドでその機能が失しなわれてしまい(バグ？)、特定のキーボードのみUSにすることができなくなってしまった。
こいつは、AHKとinterceptionとAHI(AutoHotInterception)を使用し、特定のキーボードデバイスのマッピングを無理矢理変更するサンプルです。
御自由におつかい下さい。

# dependency
![AHK](https://www.autohotkey.com/)
![AHI](https://github.com/evilC/AutoHotInterception)
![Interception](https://github.com/oblitum/Interception)
