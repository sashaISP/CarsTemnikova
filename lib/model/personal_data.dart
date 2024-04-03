class User {
  int id;
  String lastName;
  String firstName;
  String patronymic;
  String email;
  String photo;

  User(
      this.id,
      this.lastName,
      this.firstName,
      this.patronymic,
      this.email,
      this.photo
      );
}

List<User> personalDataUser = [
  User(0,
    'Темникова',
    'Александра',
    'Артёмовна',
    'sasha-tem@mail.ru',
    "https://clipground.com/images/rossberg-clipart-13.jpg",
  )
];