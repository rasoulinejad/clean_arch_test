/*import 'package:mc_crud_test/domain/entities/customer.dart';

class CustomerModel extends Customer {
  const CustomerModel({
    int? id,
    String? firstname,
    String? lastname,
    String? dateOfBirth,
    String? phoneNumber,
    String? email,
    String? bnkAccountNumber,
  }) : super(
          id: id,
          firstname: firstname,
          lastname: lastname,
          dateOfBirth: dateOfBirth,
          phoneNumber: phoneNumber,
          email: email,
          bnkAccountNumber: bnkAccountNumber,
        );

  factory CustomerModel.fromJson(Map<String, dynamic> map) {
    //if (map == null) return null;

    return CustomerModel(
      firstname: map['firstname'] as String,
      lastname: map['lastname'] as String,
      dateOfBirth: map['dateOfBirth'] as String,
      phoneNumber: map['phoneNumber'] as String,
      email: map['email'] as String,
      bnkAccountNumber: map['bnkAccountNumber'] as String,

    );
  }
}*/
