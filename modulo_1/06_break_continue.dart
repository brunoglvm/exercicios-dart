main() {
  for (var i = 1; i < 10; i++) {
    if (i == 6) {
      break;
    }
    print(i);
  }

  print("---------");

  for (var i = 1; i < 10; i++) {
    if (i % 2 == 1) {
      continue;
    }
    print(i);
  }
}
