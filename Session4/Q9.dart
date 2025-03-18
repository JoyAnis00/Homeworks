// Create a class `Rectangle` with:- Private attributes `_width` and `_height`.- A constructor that initializes the values.- A getter `area` that calculates and returns the area.
//In `main()`, create a `Rectangle` object and print its area

void main() {
  Rectangle rectangle = Rectangle(5, 10);
  print("Area of the rectangle: ${rectangle.area}");
}

class Rectangle {
  int _width = 0;
  int _height = 0;

  Rectangle(int width, int height) {
    _width = (width > 0) ? width : 0;
    _height = (height > 0) ? height : 0;
  }

  int get area => _width * _height;
}
