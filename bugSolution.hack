function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    var result: int = 1;
    var i: int = 1;
    while (i <= x) {
      result = result * i;
      i = i + 1;
    }
    return result;
  }
}

function main(): void {
  echo foo(5);
}

This iterative solution avoids recursion, eliminating the risk of stack overflow. The `while` loop computes the factorial without recursive function calls, making it suitable for handling larger inputs.