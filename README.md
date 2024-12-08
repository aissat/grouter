# GRouter - Advanced Flutter Navigation Example

A Flutter project demonstrating advanced navigation patterns using GoRouter with features like nested navigation, authentication flow, and indexed stack navigation.

## Features

- 🔐 Authentication flow with route guards
- 📱 Bottom navigation with indexed stack navigation
- 🔄 Nested navigation support
- 🏗️ Clean architecture structure
- 🎯 Dependency injection using GetIt
- 📍 Deep linking support

## Project Structure

```
lib/
├── core/
│   ├── router/
│   │   ├── guards/      # Route guards for authentication
│   │   ├── routes/      # Route definitions
│   │   └── router_config.dart
│   └── service_locator.dart
└── shell/
    └── app_shell.dart   # Main app shell with bottom navigation
```

## Dependencies

- Flutter SDK: ^3.5.4
- go_router: ^14.6.2
- get_it: ^8.0.2

## Getting Started

1. Clone the repository:
```bash
git clone https://github.com/aissat/grouter.git
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Navigation Features

- **Authentication Guard**: Protects routes that require authentication
- **Bottom Navigation**: Implements persistent bottom navigation with state preservation
- **Nested Navigation**: Supports independent navigation stacks for each tab
- **Deep Linking**: Handles deep links for direct navigation to specific screens

## Architecture

The project follows a clean architecture approach with:
- Separation of routing logic into dedicated files
- Centralized router configuration
- Dependency injection for service management
- Modular route organization

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
