void main() {
  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];
  matrixSquare(matrix);

  //printPyramid(5);
}

/// 피라미드 별찍기 함수
void printPyramid(int levels) {
  for (int i = 1; i <= levels; i++) {
    String spaces = ' ' * (levels - i);
    String stars = '*' * (2 * i - 1);
    print('$spaces$stars');
  }
}

/// 리스트의 대각선 합을 계산하고 출력하는 함수
void matrixSquare(List<List<int>> matrix) {
  int rows = matrix.length;

  // 왼쪽 위에서 오른쪽 아래로
  int left = 0;
  for (int i = 0; i < rows; i++) {
    left += matrix[i][i];
  }

  // 오른쪽 위에서 왼쪽 아래로
  int right = 0;
  for (int i = 0; i < rows; i++) {
    right += matrix[i][rows - 1 - i];
  }

  print('left: $left, right: $right');
}
