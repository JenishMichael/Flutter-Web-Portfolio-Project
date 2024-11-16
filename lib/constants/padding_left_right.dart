class PaddingLeftRight {
  static double getPaddingleftRight(double screenWidth) {
    double baseWidth = 320; // Base width for scaling padding
    double paddingValue = (screenWidth / baseWidth) * 30;

    // Set minimum and maximum padding
    double minPadding = 30;
    double maxPadding = 300;

    // Ensure padding is within the min and max range
    paddingValue = paddingValue < minPadding ? minPadding : paddingValue;
    paddingValue = paddingValue > maxPadding ? maxPadding : paddingValue;

    return paddingValue;
  }
}
