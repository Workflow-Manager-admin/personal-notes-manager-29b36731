# notes_frontend

A responsive Notes App built with Flutter supporting mobile and web, with backend REST API integration for personal notes management.

## Features

- Notes list and grid views.
- View, create, edit, and delete notes.
- Responsive/mobile/web support.
- Light and dark theme toggling.
- Search notes by title or content.
- All data is stored with backend API (`API_BASE_URL` env var).

## Getting Started

### 1. Clone the repo and install dependencies

```bash
flutter pub get
```

### 2. Create an `.env` file

Copy `.env.example` to `.env` and update `API_BASE_URL` to match your notes backend REST server:
```
API_BASE_URL=http://localhost:3000
```

### 3. Run the app

For web:
```bash
flutter run -d chrome
```

For Android/iOS:
```bash
flutter run
```

Ensure the backend server is running and reachable.

### 4. Backend REST API

- The app expects a backend matching the [OpenAPI spec](../notes_backend/interfaces/openapi.json).
- All note save/edit/delete actions use the API.

## File Structure

- `main.dart` - Entry point, routing, and home layout.
- `note_service.dart` - REST data provider and CRUD logic.
- `note_model.dart` - Note model representation.
- `note_edit_page.dart`, `note_detail_page.dart` - Note UI screens.
- `theme_data.dart`, `settings_provider.dart` - Theme and UX state.

## Responsive Design

- The app adapts grid or list layout based on device width.
- Designed to look clean/modern on both phones and desktops.

## Environment Variables

- `API_BASE_URL` (in `.env`) - The backend REST endpoint for notes.

## License

MIT
