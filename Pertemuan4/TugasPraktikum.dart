// void main() {
//   // Fungsi dengan positional parameters
//   void greetPositional(String name, int nim) {
//     print('Nama $name, NIM $nim.');
//   }

//   greetPositional('Riska', 2241720039);
// }

// void main() {
//   // Fungsi dengan named parameters
//   void greetNamed({required String name, int age = 20}) {
//     print('Namaku $name, umur $age tahun.');
//   }

//   // Memanggil fungsi dengan named parameters
//   greetNamed(name: 'Triwulandari', age: 20);
//   greetNamed(name: 'Riska');
// }

// void main() {
//   // Fungsi dengan optional positional parameters
//   void greetOptional(String name, [int kelas = 3]) {
//     print('Namaku $name, kelas $kelas.');
//   }

//   // Memanggil fungsi dengan optional positional parameters
//   greetOptional('Riska', 3);
//   greetOptional('Kurnia');
// }

// void main() {
//   // 1. Fungsi dalam variabel
//   var greet = (name) => 'Hello, $name!';
//   print(greet('Riska'));

//   // 2. Fungsi sebagai argumen
//   void execute(Function func, String name) => print(func(name));
//   execute(greet, 'Kurnia');

//   // 3. Mengembalikan fungsi
//   Function multiplier(int x) => (int n) => x * n;
//   var triple = multiplier(3);
//   print(triple(4)); // Output: 12

//   // 4. Fungsi dalam list
//   var ops = [(a, b) => a + b, (a, b) => a - b];
//   print(ops[0](5, 3)); // Output: 8
//   print(ops[1](5, 3)); // Output: 2
// }

// void main() {
//   var list = ['apples', 'bananas', 'oranges'];
//   list.forEach((item) {
//     print('${list.indexOf(item)}: $item');
//   });
// }

// void main() {
//   var name = 'Riska';
//   void printName() {
//     print(name);
//   }

//   printName();
// }

// Function createAdder(int value) {
//   return (int addValue) => value + addValue;
// }

// void main() {
//   var addFive = createAdder(5);
//   print(addFive(3)); // Output: 8
//   print(addFive(10)); // Output: 15

//   var addTen = createAdder(10);
//   print(addTen(3)); // Output: 13
// }

// List<int> calculate(int a, int b) {
//   int sum = a + b;
//   int product = a * b;
//   return [sum, product];
// }

// void main() {
//   var result = calculate(3, 5);
//   print('Sum: ${result[0]}, Product: ${result[1]}');
// }

// Map<String, int> calculate(int a, int b) {
//   return {
//     'sum': a + b,
//     'product': a * b,
//   };
// }

// void main() {
//   var result = calculate(3, 5);
//   print('Sum: ${result['sum']}, Product: ${result['product']}');
// }

class Result {
  int sum;
  int product;

  Result(this.sum, this.product);
}

Result calculate(int a, int b) {
  return Result(a + b, a * b);
}

void main() {
  var result = calculate(3, 5);
  print('Sum: ${result.sum}, Product: ${result.product}');
}
