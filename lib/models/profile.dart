class Profile {
  final String name;
  final String position;
  final String about;
  final String food;
  final String holiday;
  final List<String> skills;
  final bool editable;

  Profile({this.name, this.position, this.about, this.food, this.holiday, this.skills, this.editable = false});
}