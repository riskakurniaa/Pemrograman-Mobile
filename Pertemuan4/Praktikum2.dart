// void main() {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//   print(halogens);
// }

// void main() {
//   var names1 = <String>{};
//   Set<String> names2 = {}; // This works, too.
//   var names3 = {}; // Creates a map, not a set.

//   print(names1);
//   print(names2);
//   print(names3);
// }

void main() {
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  names1.add("Riska Kurnia Triwulandari");
  names1.add("2241720039");
  names2.addAll({"Riska Kurnia Triwulandari", "2241720039"});

  print(names1);
  print(names2);
}
