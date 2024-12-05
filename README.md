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
