import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mc_crud_test/data/datasources/local/moor_database.dart';
import 'package:mc_crud_test/data/repositories/local_repository.dart';
import 'package:mc_crud_test/domain/entities/customer.dart';
import 'package:mc_crud_test/domain/repositories/customer_repository.dart';
import 'package:mc_crud_test/domain/usecaes/add_customer_usecase.dart';
import 'package:mockito/mockito.dart';
import 'package:drift/native.dart';

//class MockCustomerRepository extends Mock implements CustomerRepository{}

void main() {
  //MockCustomerRepository customerRepository;
  //late AddCustomerUseCase addCustomerUseCase;
  //IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  late LocalRepository localRepository;
  //late AppDatabase database;
/*  setUpAll(() {
   const MethodChannel channel = MethodChannel('com.tekartik.sqflite.SqflitePlugin');
    channel.setMockMethodCallHandler((MethodCall call) async {
      return ".";
    });
  });*/
  setUp(() {
    WidgetsFlutterBinding.ensureInitialized();
    localRepository = LocalRepository();
    //database = AppDatabase();
    //SqflitePlugin.registerWith(registrarFor("com.tekartik.sqflite.SqflitePlugin"));
    //customerRepository = MockCustomerRepository();
    //addCustomerUseCase = AddCustomerUseCase(customerRepository);
  });

  test('should insert customer entity(firstname,lastname,dateOfBirth must unique)', () async {
    CustomerTableData customer =
        CustomerTableData(firstname: 'a', lastname: 'b', email: 'r@b.com', phoneNumber: '915028', accountNumber: '1234567812345678', dateOfBirth: '2000/01/01');

    var result = await localRepository.addCustomer(customer);
    expect(result, greaterThanOrEqualTo(0));
  });
}
