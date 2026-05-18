# lead_tracker_frontend_prototype

A Flutter frontend for lead tracking.

## API Configuration

The app reads the API base URL using this precedence:

1. `--dart-define=BASE_URL=...`
2. `.env` file value (`BASE_URL=...`)

This allows convenient local development with `.env` while keeping CI/release
overrides explicit through `--dart-define`.

### Local Development

The repository includes a default `.env` file. You can edit it as needed:

```env
BASE_URL=https://leadtrackerapi-production.up.railway.app/
```

Then run:

```bash
flutter run
```

### CI/Release Override

Override the URL without changing `.env`:

```bash
flutter run --dart-define=BASE_URL=https://leadtrackerapi-production.up.railway.app/
```

If `BASE_URL` is missing from both sources, the app fails fast at startup.

## Getting Started

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
