main() {
  for (var galho = "#"; galho != "#######"; galho += "#") {
    print(galho);
  }

  print("--------");

  var galhos = "######";

  while (galhos.isNotEmpty) {
    print(galhos);
    galhos = galhos.substring(0, galhos.length - 1);
  }

  print("--------");

  for (var i = 6; i >= 1; i--) {
    print("#" * i);
  }
}
