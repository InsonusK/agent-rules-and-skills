# Общая библиотека skill and rules
Репозиторий с включенными другими репозиториями по agent rule & skill
список подключенных репозиторием смотрив [gitmodules](.gitmodules)

## Добавление нновых репозитариев
добавление модуля `git submodule add {git path} {folder}`

В случае ошибок
1. Проверить что есть хотя бы 1 коммит в добавляемом репозитарии
2. очистить кеш
```shell
rm -rf <folder>
rm -rf .git/modules/<folder>
```

## Формирование итоговых Skill & Rules
1. Запустить `./sync.sh [framework]`
2. Скопировать `.output` в проект `.agents`

## Полезные другие библиотеки
- [Antropics skills](https://github.com/anthropics/skills/blob/main/README.md)
- [Google antigravity doc](https://antigravity.google/docs/models)