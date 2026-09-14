# CampusOS

A mobile-first student platform that will bring campus information into one clear, useful experience. The initial target is VIT-AP, but this Phase 1 build uses only mock data and does not access VTOP.

## Current feature

- A clean Monday timetable screen with mock course data.
- Riverpod-powered asynchronous timetable state.
- GoRouter application routing and a shared Material 3 theme.

## Tech stack

- Flutter and Dart
- `flutter_riverpod` for state management
- `go_router` for navigation
- `dio` reserved for the later, authorized backend connection

## Architecture

The code is organized by feature. The timetable currently follows this flow:

`TimetableScreen → Riverpod provider → TimetableRepository → mock data`

The repository currently simulates an asynchronous request. Later, its implementation can change to call an authorized backend while the UI keeps using the same provider.

## Run locally

```bash
flutter pub get
flutter run
```

To verify the project:

```bash
flutter analyze
flutter test
```

## Roadmap

Next: make the timetable provider accept the selected day, then add an app shell and further mock-data features before introducing any backend or VTOP integration.
