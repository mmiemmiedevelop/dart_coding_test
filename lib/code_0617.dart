//https://leetcode.com/problems/find-the-difference/?envType=study-plan-v2&envId=programming-skills
// * 문제
// 두 개의 문자열 s와 t가 주어집니다.
// 문자열 t는 문자열 s에 임의로 추가된 하나의 문자를 포함하고 있습니다.
// 이 추가된 문자를 찾아서 반환하세요.

// * 조건
// 1. s와 t는 모두 소문자 알파벳으로만 이루어져 있습니다.
// 2. t는 s보다 한 글자가 더 긴 문자열입니다.

// * 예시
// 1. 입력: s = "abcd", t = "abcde" 출력: "e"
// 	설명: t에서 추가된 문자 'e'를 찾아 반환합니다.

// 2. 입력: s = "", t = "y" 출력: "y"
// 	설명: s가 비어있고, t에는 하나의 문자만 있으므로 그 문자가 답입니다.

// 3. 입력: s = "aabbcc", t = "aabbcce" 출력: "e"

class Solution {
  String findTheDifference(String s, String t) {
    //runes: 유니코드값 접근
    //fold: 문자의 값 더하는 메소드
    int sSum = s.runes.fold(0, (sum, codePoint) => sum + codePoint);
    int tSum = t.runes.fold(0, (sum, codePoint) => sum + codePoint);
    //값의 차이 계산
    //fromCharCode: 유니코드를 문자로 변환하는 메소드
    return String.fromCharCode(tSum - sSum);
  }
}

void main() {
  print(Solution().findTheDifference("abc", "abcd"));
}
