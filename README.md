# OJTALK

## インストール

```
$ docker compose up -d
$ sudo chmod a+w work/
```

## 使い方

```
$ echo "終わりました！" | ./say
```

or

```
$ ./say "終わりました！"
```

## コマンド化

~/.bash_aliases
```
alias say='${YOUR_DOCKER_COMPOSE_PATH}/say'
```

## 応用編

### 翻訳と組み合わせる

~/.bash_aliases
```
alias say_ja='${YOUR_DOCKER_COMPOSE_PATH}/say_ja'
```

then

```
echo "hello, world!" | say_ja
```
