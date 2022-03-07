import 'package:flutter/material.dart';
import 'package:mc_crud_test/data/datasources/local/moor_database.dart';

import '../../config/utils/Validator.dart';
import '../../data/repositories/local_repository.dart';

class AddCustomerPage extends StatefulWidget {
  const AddCustomerPage({Key? key}) : super(key: key);

  @override
  State<AddCustomerPage> createState() => _AddCustomerPageState();
}

class _AddCustomerPageState extends State<AddCustomerPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController firstnameController = TextEditingController(text: 'reza');
  TextEditingController lastnameController = TextEditingController(text: 'ahmadi');
  TextEditingController birthdateController = TextEditingController(text: '1990/01/01');
  TextEditingController phoneController = TextEditingController(text: '9159159151');
  TextEditingController emailController = TextEditingController(text: 'a@b.com');
  TextEditingController accountController = TextEditingController(text: '12345678');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: const Text('Add Customer', style: TextStyle(color: Colors.white)),
    );
  }

  Widget _buildBody() {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      controller: firstnameController,
                      decoration: const InputDecoration(labelText: 'Name'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'name not valid';
                        }

                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      controller: lastnameController,
                      decoration: const InputDecoration(labelText: 'Family'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'family not valid';
                        }

                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      controller: birthdateController,
                      decoration: const InputDecoration(labelText: 'Date Of Birth'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'date Of birth not valid';
                        }

                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      controller: phoneController,
                      decoration: const InputDecoration(labelText: 'Phone Number'),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (!Validator().validateMobile(value!)) {
                          return 'phone number not valid';
                        }

                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(labelText: 'Email'),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (!Validator().validateEmail(value!)) {
                          return 'email not valid';
                        }

                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      controller: accountController,
                      decoration: const InputDecoration(labelText: 'Account Number'),
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (!Validator().validateAccount(value!)) {
                          return 'account number not valid';
                        }

                        return null;
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.redAccent)),
                child: const Text('Add New Customer'),
                onPressed: _addCustomer,
              ),
            ],
          ),
        ));
  }

  void _addCustomer() async {
    if (_formKey.currentState!.validate()) {
      CustomerTableData customer = CustomerTableData(
          firstname: firstnameController.text,
          lastname: lastnameController.text,
          email: emailController.text,
          phoneNumber: phoneController.text,
          accountNumber: accountController.text,
          dateOfBirth: birthdateController.text);

      int result = -1;
      try {
        result = await LocalRepository().addCustomer(customer);
      } catch (e) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              title: Icon(
                Icons.error,
                color: Colors.red,
              ),
              content: SizedBox(height: 50, child: Center(child: Text('error! duplicate data'))),
            );
          },
        );
      } finally {
        if (result > 0) {
          Navigator.pop(context);
        }
      }
    }
  }
}
