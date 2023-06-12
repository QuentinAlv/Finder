import 'package:faker/faker.dart';
import 'package:bachelor/models/bachelor.dart';

List<Bachelor> generateBachelors() {
  List<String> maleNames = [
    'John',
    'Michael',
    'William',
    'James',
    'Robert',
    'David',
    'Joseph',
    'Daniel',
    'Charles',
    'Thomas',
    'Christopher',
    'Matthew',
    'Anthony',
    'Mark',
    'Donald',
  ];

  List<String> femaleNames = [
    'Mary',
    'Jennifer',
    'Linda',
    'Patricia',
    'Elizabeth',
    'Susan',
    'Jessica',
    'Sarah',
    'Karen',
    'Nancy',
    'Lisa',
    'Margaret',
    'Betty',
    'Dorothy',
    'Sandra',
  ];

  List<String> avatarPicsMale = [
    'assets/images/man-1.png',
    'assets/images/man-2.png',
    'assets/images/man-3.png',
    'assets/images/man-4.png',
    'assets/images/man-5.png',
    'assets/images/man-6.png',
    'assets/images/man-7.png',
    'assets/images/man-8.png',
    'assets/images/man-9.png',
    'assets/images/man-10.png',
    'assets/images/man-11.png',
    'assets/images/man-12.png',
    'assets/images/man-13.png',
    'assets/images/man-14.png',
    'assets/images/man-15.png',
  ];

  List<String> avatarPicsFemale = [
    'assets/images/woman-1.png',
    'assets/images/woman-2.png',
    'assets/images/woman-3.png',
    'assets/images/woman-4.png',
    'assets/images/woman-5.png',
    'assets/images/woman-6.png',
    'assets/images/woman-7.png',
    'assets/images/woman-8.png',
    'assets/images/woman-9.png',
    'assets/images/woman-10.png',
    'assets/images/woman-11.png',
    'assets/images/woman-12.png',
    'assets/images/woman-13.png',
    'assets/images/woman-14.png',
    'assets/images/woman-15.png',
  ];

  List<Bachelor> bachelors = [];

  final faker = Faker();

  for (int i = 0; i < 15; i++) {
    String firstname = maleNames[i % maleNames.length];
    String lastname = faker.person.lastName();
    Gender gender = Gender.male;
    String avatar = avatarPicsMale[i % avatarPicsMale.length];
    List<Gender> searchFor = [Gender.female];
    String job = faker.job.title();
    String description = faker.lorem.sentences(1).join(' ');

    Bachelor bachelor = Bachelor(
      firstname: firstname,
      lastname: lastname,
      gender: gender,
      avatar: avatar,
      searchFor: searchFor,
      job: job,
      description: description,
    );

    bachelors.add(bachelor);
  }

  for (int i = 0; i < 15; i++) {
    String firstname = femaleNames[i % femaleNames.length];
    String lastname = faker.person.lastName();
    Gender gender = Gender.female;
    String avatar = avatarPicsFemale[i % avatarPicsFemale.length];
    List<Gender> searchFor = [Gender.male];
    String job = faker.job.title();
    String description = faker.lorem.sentences(1).join(' ');

    Bachelor bachelor = Bachelor(
      firstname: firstname,
      lastname: lastname,
      gender: gender,
      avatar: avatar,
      searchFor: searchFor,
      job: job,
      description: description,
    );

    bachelors.add(bachelor);
  }

  return bachelors;
}
