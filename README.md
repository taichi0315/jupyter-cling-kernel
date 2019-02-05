# jupyter-cling-kernel
Clingを用いてjupyter notebook上でC++の実行を可能にします。

以下、実行手順です。

```
$git clone https://github.com/taichi0315/jupyter-cling-kernel.git
$cd jupyter-cling-kernel
$docker-compose up --build
```

ビルドが終わると、ターミナル上でjupyter notebookが起動していることが分かります。
ターミナル上に起動しているURLが載っているので、コピーしてブラウザからアクセスするようにして下さい。

その際、ローカルPCの場合は(hoge or 127.0.0.1)の部分を127.0.0.1に選択して下さい。
グローバルサーバの場合は127.0.0.1の部分をグローバルipアドレスにすることでアクセスすることができます。
