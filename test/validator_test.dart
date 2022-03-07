import 'package:flutter_test/flutter_test.dart';
import 'package:mc_crud_test/config/utils/Validator.dart';

void main() {
  group('Validate phone & email in Add Customer Page', () {
    test(
        'phone number should be at least 10 characters long',
            () {
          expect(Validator().validateMobile('915443'), false);
          expect(Validator().validateMobile('+9999'), false);
          expect(Validator().validateMobile('0989999933'), true);
        });

    test(
        'email must have @ character and dot character and is at least 5 characters long',
            () {
          expect(Validator().validateEmail('test'), false);
          expect(Validator().validateEmail('Aa@6.ir'), true);
          expect(Validator().validateEmail('a@b.com'), true);
          expect(Validator().validateEmail('a@b.w'), true);
        });

    test(
        'account number contain digit only and is at least 8 characters long',
            () {
          expect(Validator().validateAccount('66664444'), true);
          expect(Validator().validateAccount('6666422'), false);
          expect(Validator().validateAccount('aaaabbbbccccffff'), false);

        });

  });
}