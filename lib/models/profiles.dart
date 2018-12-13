import 'package:onboarding/models/profile.dart';

class Profiles {
  static final Profile self = Profile(
      name: 'Lifei Zhou',
      position: 'Software Engineer',
      about: 'Something about me',
      holiday: 'Japan, New York, New Zealand',
      food: 'Dumplings, Ice Cream',
      skills: ['Ruby', 'Java'],
      editable: true);
  static final List<Profile> members = [
    Profile(
        name: 'Carmelia',
        position: 'Product Design',
        about: 'Something about me',
        holiday: 'Japan, New York, New Zealand',
        food: 'Dumplings, Ice Cream',
        skills: ['Ruby', 'Java'])
  ];
}
