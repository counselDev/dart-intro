void main() {
  print("1");
  getData().then((value) => print(value)).catchError((err) => print(err));
  print("3");
}

Future<String> getData() {
  print("Start get");
  return Future.delayed(Duration(seconds: 3), () => ("2"));
}
