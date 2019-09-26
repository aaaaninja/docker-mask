docker-mask
================================================================================
[jakedeichert/mask](https://github.com/jakedeichert/mask)をdocker環境でビルドする.

ビルド後, バイナリを取り出す方法
--------------------------------------------------------------------------------
`pwd` 以下に置かれるよ.
```sh
#!/usr/bin/env bash

c_id=$(docker create aaaaninja/mask /mask)
docker cp "$c_id":/mask ./
docker rm "$c_id"
```
