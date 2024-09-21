// void main() {
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }

void main() {
  List<String?> info = List.filled(5, null);
  info[1] = "Riska Kurnia Triwulandari";
  info[2] = "2241720039";

  print(info.length);
  print(info[1]);
  print(info[2]);
}
