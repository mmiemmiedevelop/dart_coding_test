void main() {
  rightTriangleOne();
  print('\n=== 역방향 피라미드 ===');
  reversePyramid();
  print('\n=== 정사각형 ===');
  square();
}

/// 5행의 오른쪽 직각 별(*) 피라미드를 출력하는 함수
void rightTriangleOne() {
  final int rows = 5; // 피라미드 높이

  for (int i = 1; i <= rows; i++) {
    // 행고정
    String stars = '';

    // 현재 행(i)만큼 별을 누적
    for (int k = 1; k <= i; k++) {
      stars += '*';
    }

    print(stars);
  }
}

/// 역방향 피라미드 (거꾸로 된 삼각형) 출력하는 함수
void reversePyramid() {
  final int rows = 5; // 피라미드 높이

  for (int i = rows; i >= 1; i--) {
    // 행고정
    String stars = '';

    // 현재 행(i)만큼 별을 누적
    for (int k = 1; k <= i; k++) {
      stars += '*';
    }

    print(stars);
  }
}

/// 정사각형 별(*) 출력하는 함수
void square() {
  final int size = 5; // 정사각형 크기

  for (int i = 1; i <= size; i++) {
    // 행고정
    String stars = '';

    // 각 행마다 size만큼 별을 누적
    for (int j = 1; j <= size; j++) {
      stars += '*';
    }

    print(stars);
  }
}
