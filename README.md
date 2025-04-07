# Checkpoint

A new Flutter project.

## Getting Started

installation instructions here

```
flutter pub get

```

## File structure

These are the main 3 folders we will be using:

**_Data_** (domain/data layer) is for models and repositories

**_Bloc_** is for storing bloc operations at the very top level

**_Features_** (presentation layer) are purely for UI screens and widgets

```
lib
  ├── data
  │   ├── models
  │   │   └── x_model.dart
  │   └── repositories
  │       └── x_repository.dart
  ├── bloc
  │   └── x_bloc
  │       ├── x_bloc.dart
  │       ├── x_event.dart
  │       └── x_state.dart
  └── features
      └── x
          ├── screens
          │   └── home_screen.dart
          └── widgets
          └── preview_card.dart

```
