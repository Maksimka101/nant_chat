# Nant client

Chat client for [test task](https://github.com/tada-team/nane)

## Features

- Dark and light theme
- Localization
- Flexible architecture
- Chat pagination
- Adaptive design for mobile and desktop

## Differences between mobile and desktop design and UX

- Replace navigation bar with navigation rail
- Merge rooms list screen with chat screen
- Minimized app bar
- System controls integrated into UI (disabled title bar on macOS)

## Under the hood

- flutter bloc
- freezed for models
- hive for cache
- dio as http client
- web_socket_channel for work with web socket
- pedantic and custom rules for analyzer
- get_it for di in UI
- logger for logging
- worker_manager for work with Isolates
- intl_utils for localization
- keyboard_dismisser to hide keyboard correctly on iOS
- Few tests with use of standard flutter tools
- Number of custom utils methods, repositories and extensions
- Work with themes using standard flutter Theme
- dash_chat for chat UI

## How to build

- Checkout on flutter stable (v2.01)
- Do pub get
- Run on ios, android or macOS (other platform not tested)

## Install

Install [android](https://drive.google.com/file/d/1WU4PWDDrFPFc9fQAsNBdrAriDEezSFnH/view?usp=sharing) 
or [Mac Os](https://drive.google.com/file/d/1g4vnG8h7GbHcTWZ2c_GkfOWq1xfFz06Q/view?usp=sharing) version

## Screenshots

| iOS dark theme | Android light theme |
|---------|-------|
| ![chats screen](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/ios/chats.png?raw=true) |![chats screen](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/android/chats.png?raw=true)    |
| ![chat screen](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/ios/chat.png?raw=true)|![chat screen](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/android/chat.png?raw=true)    |
| ![new chat screen](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/ios/new_chat.png?raw=true) |![new chat screen](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/android/new_chat.png?raw=true)   |
| ![profile screen](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/ios/profile.png?raw=true) |  ![profile screen](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/android/profile.png?raw=true)    |

It should be noted that I am not a designer

| Mac Os dark theme | Mac Os light theme |
|---------|-------|
| ![selected chat dark](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/mac_os/selected_chat_dark.png?raw=true) |![all chats light](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/mac_os/all_chats_light.png?raw=true)       |
| ![create room dark](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/mac_os/create_room_dark.png?raw=true)   |  ![profile screen light](https://github.com/Maksimka101/nant_chat/blob/master/assets/screenshots/mac_os/profile_light.png?raw=true)       |

