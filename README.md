## BMI Calculator Flutter App

This is a Body Mass Index (BMI) Calculator built using Flutter. The app allows users to input their height, weight, and age to calculate their BMI and provides an interpretation of the result.

### Features

- Select gender
- Input height using a slider
- Input weight and age using increment and decrement buttons
- Calculate BMI based on input values
- Display BMI result along with interpretation
- Navigate to a results page to view BMI and interpretation

### Project Structure

The project is organized as follows:

```
lib
├── Components
│   ├── bottom_button.dart
│   ├── icon_content.dart
│   ├── reusable_card.dart
│   └── round_icon_button.dart
├── Screens
│   ├── input_page.dart
│   └── results_page.dart
├── calculator_brain.dart
├── constants.dart
└── main.dart
```

### Files Description

- **main.dart**: Entry point of the application.
- **input_page.dart**: Main screen where users input their height, weight, and age.
- **results_page.dart**: Screen to display the calculated BMI and its interpretation.
- **calculator_brain.dart**: Contains the logic for calculating BMI and determining the result.
- **constants.dart**: Defines constant values used throughout the app.
- **Components**:
  - **bottom_button.dart**: Custom button widget used at the bottom of the screen.
  - **icon_content.dart**: Custom widget to display icons with labels.
  - **reusable_card.dart**: Custom widget for creating reusable cards.
  - **round_icon_button.dart**: Custom widget for rounded icon buttons.

### Getting Started

To get started with the BMI Calculator app, follow these steps:

1. **Clone the repository using Android Studio**:
   - Open Android Studio.
   - Click on "File" > "New" > "Project from Version Control".
   - In the "URL" field, enter:
     ```
     https://github.com/OswaldSena/flutter_bmi_calculator.git
     ```
   - Click "Clone".

2. **Navigate to the project directory** (if not already opened):
   ```
   cd flutter_bmi_calculator
   ```

3. **Install dependencies**:
   ```
   flutter pub get
   ```

4. **Run the app**:
   ```
   flutter run
   ```

### Usage

1. Select your gender by tapping on the respective card.
2. Use the slider to set your height.
3. Adjust your weight and age using the increment and decrement buttons.
4. Tap the "CALCULATE" button to view your BMI result.
5. The results page will display your BMI, the result category (e.g., Normal, Overweight), and an interpretation.



### Dependencies

- **flutter**
- **font_awesome_flutter**

### License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

### Author

- [Oswald Sena](https://github.com/OswaldSena)

Feel free to contribute to this project by opening issues or submitting pull requests.

---

This README provides an overview of the project and instructions to get started. For more detailed documentation, refer to the comments within the source code.
