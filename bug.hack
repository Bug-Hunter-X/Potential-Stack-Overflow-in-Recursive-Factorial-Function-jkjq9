function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This function will work fine for smaller values, but for larger values of x, it will cause a stack overflow error.  This is because each recursive call adds a new frame to the call stack.  If there are too many recursive calls, the stack will overflow, and the program will crash. The Hack compiler doesn't currently give a clear warning of potential stack overflow.