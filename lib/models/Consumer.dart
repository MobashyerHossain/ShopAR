class Consumer {
  final String firstName,
      lastName,
      email,
      password,
      phoneNumber,
      address,
      gender;
  final int id;
  Consumer({
    this.email,
    this.password,
    this.id,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.address,
    this.gender,
  });
}

// Sample Consumers
List<Consumer> users = [
  Consumer(
    id: 1,
    firstName: "Moore",
    lastName: "Jecob",
    email: 'jecob990@gmail.com',
    password: 'dfgdgh544gh6',
    gender: "male",
    phoneNumber: '0168425895',
    address: 'flat#4, road#6, block#e, Bashundhara R/A, Dhaka',
  ),
];
