class User {
  int id;
  String lastName;
  String firstName;
  String patronymic;
  String email;
  int phoneNumber;
  String photo;

  User(
      this.id,
      this.lastName,
      this.firstName,
      this.patronymic,
      this.email,
      this.phoneNumber,
      this.photo
      );
}

List<User> personalDataUser = [
  User(0,
    'Темникова',
    'Александра',
    'Артёмовна',
    'sasha-tem@mail.ru',
    89874560123,
    "https://clipground.com/images/rossberg-clipart-13.jpg",
  )
];