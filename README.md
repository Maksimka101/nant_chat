# Nant client

Тот самый цыганский клиент для [тестового задания](https://github.com/tada-team/nane)

## Features

- Темная тема
- Локализация
- Гибкая архитектура
- Разбиение сообщений на страницы и подгрузка по страницам

## Under the hood

- flutter bloc
- freezed для моделей
- hive для кэша
- dio для http
- web_socket_channel для работы с веб сокетами
- pedantic + собственные правила для анализатора
- get_it для работы с зависимостями в UI
- logger для логирования
- worker_manager для работы с изолятами
- intl_utils для локализации
- keyboard_dismisser для корректного скрытия клавиатуры на iOS
- Несколько тестов стандартными средствами flutter
- Некоторое количество собственных utils классов, репозиториев и extension-ов
- Работа с темой стандартными средствами flutter
- dash_chat для интерфейса чата

## How to build

- Переключиться на stable (v1.22)
- Сделать pub get
- Запустить на android в любом режиме, на iOS тестировал только debug

## Install
Можно скачать [apk](https://drive.google.com/file/d/136nBApv28C66jnHEOOXNVrnb51btNzb_/view?usp=sharing)

## Screenshots

| iOS dark theme | Android light theme |
|---------|-------|
| ![chats screen](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/ios/chats.png?raw=true) |![chats screen](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/android/chats.png?raw=true)    |
| ![chat screen](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/ios/chat.png?raw=true)|![chat screen](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/android/chat.png?raw=true)    |
| ![new chat screen](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/ios/new_chat.png?raw=true) |![new chat screen](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/android/new_chat.png?raw=true)   |
| ![profile screen](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/ios/profile.png?raw=true) |  ![profile screen](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/android/profile.png?raw=true)    |
