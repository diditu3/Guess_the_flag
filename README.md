# Flutter Flags App

A small educational practice application built in Flutter to help users explore world geography by learning flag names and testing their knowledge through a dedicated quiz interface.

## Project Features
* **Flag Names Guide:** A focused module (`FlagsNames.dart`) dedicated to displaying countries along with their corresponding national flags.
* **Interactive Flag Quiz:** A multiple-choice or interactive testing game engine (`FlagsQuiz.dart`) built to quiz users on their flag knowledge.
* **Modular Code Structure:** Uses a feature-first folder design strategy to cleanly isolate distinct app pages and state layers.

## Project Directory
The codebase is cleanly separated into dedicated sub-features inside the `Features/` folder:
* `main.dart` - Application wrapper currently defaulting directly to the flag quiz module screen.
* `Features/splashScreen/` - App landing entrance screen animation or visual anchor.
* `Features/homePage/` - Main landing dashboard connecting the different app modes.
* `Features/flagsName/` - List view detailing different countries and their respective flags.
* `Features/flagQuiz/` - Core testing view managing active quiz tracking states.

## How to run it
1. Pull standard package frameworks: `flutter pub get`
2. Launch on an emulator or running hardware unit: `flutter run`
