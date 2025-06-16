# Coffee Shop App

A modern and user-friendly Flutter application for ordering coffee and managing your coffee shop experience.

## Screenshots

<img width="275" alt="Image" src="https://github.com/user-attachments/assets/87009a2f-5a82-4576-a3af-0ccd53bc9526" />
<img width="275" alt="Image" src="https://github.com/user-attachments/assets/2c717430-7d42-43f4-b244-df8b6ff020f5" />
<img width="275" alt="Image" src="https://github.com/user-attachments/assets/d4c21767-75b5-478e-b29f-df0a0158c6ba" />
<img width="275" alt="Image" src="https://github.com/user-attachments/assets/3f28f95b-4ae9-48ab-9435-55e2bd79f9c5" />


## Design Credits

This app's UI design is based on the amazing work by [Coffee Shop Mobile App Design](https://www.figma.com/community/file/1116708627748807811/coffee-shop-mobile-app-design) from the Figma Community.

## Features

- Browse a variety of coffee drinks and snacks
- View detailed information about each item
- Customize your coffee order
- Add items to cart
- Track your order status
- User-friendly interface with smooth animations
- Responsive design for various screen sizes

## Getting Started

### Prerequisites

- Flutter SDK (latest version)
- Dart SDK (latest version)
- Android Studio / VS Code with Flutter extensions
- Git

### Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/coffeeshop.git
```

2. Navigate to the project directory:
```bash
cd coffeeshop
```

3. Install dependencies:
```bash
flutter pub get
```

4. Run the app:
```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart
├── screens/
│   ├── home_screen.dart
│   ├── menu_screen.dart
│   ├── cart_screen.dart
│   └── order_screen.dart
├── widgets/
│   ├── coffee_card.dart
│   ├── custom_button.dart
│   └── order_item.dart
├── models/
│   ├── coffee.dart
│   └── order.dart
└── utils/
    ├── constants.dart
    └── theme.dart
```

## Dependencies

- Flutter SDK
- Provider (for state management)
- Shared Preferences (for local storage)
- HTTP (for API calls)

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Flutter team for the amazing framework
- All contributors who have helped shape this project
