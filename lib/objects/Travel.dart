class Travel {
  int id;
  String name;
  String from;
  String to;

  Travel(this.id, this.name, this.from, this.to);

  @override
  String toString() => "Travel($id,$name)";
}