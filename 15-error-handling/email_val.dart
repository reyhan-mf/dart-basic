class EmailAddress {
  EmailAddress(this.email) {
    if (email.isEmpty) {
      throw FormatException('email can\'t be empty');
    } else if (!email.contains('@')) {
      throw FormatException('email doesn\'t contain @');
    }
  }
  final String email;

  @override
  String toString() => email;
}

void main(List<String> args) {
  try {
    print(EmailAddress('me@example.com'));
    print(EmailAddress('meexample.com'));
    print('');
  } on FormatException catch (e) {
    print(e);
  } finally {
    print('finally');
  }
}
