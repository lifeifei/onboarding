import 'package:onboarding/models/profile.dart';

class Profiles {
  static final Profile self = Profile(
    image: "self",
      name: 'Ruby Wong',
      position: 'Software Engineer',
      about: 'Something about me',
      holiday: 'Japan, New York, New Zealand',
      food: 'Dumplings, Ice Cream',
      skills: ['Ruby', 'Java', 'React'],
      editable: true);
  static final List<Profile> members = [
    Profile(
      image: "member0",
        name: 'James Duncan',
        position: 'Product Designer',
        about: 'Something about me',
        holiday: 'Japan, New York, New Zealand',
        food: 'Dumplings, Ice Cream',
        skills: ['User Experience', 'Java']),
    Profile(
        image: "member1",
        name: 'Rebecca Andeson',
        position: 'Business Analyst',
        about: 'Something about me',
        holiday: 'Japan, New York, New Zealand',
        food: 'Dumplings, Ice Cream',
        skills: ['Ruby', 'Java']),
    Profile(
        image: "member2",
        name: 'Paul George',
        position: 'Product Manager',
        about: 'Something about me',
        holiday: 'Japan, New York, New Zealand',
        food: 'Dumplings, Ice Cream',
        skills: ['Ruby', 'Java']),
    Profile(
        image: "member3",
        name: 'Melina Weston',
        position: 'Visual Designer',
        about: 'Something about me',
        holiday: 'Japan, New York, New Zealand',
        food: 'Dumplings, Ice Cream',
        skills: ['Ruby', 'Java'])
  ];
}
