import 'dart:io';

import '../../domain/entities/customer.dart';
import '../../domain/repositories/customer_repository.dart';
import '../datasources/local/moor_database.dart';
import 'package:drift/native.dart';

class LocalRepository {
  static final LocalRepository _localRepository = LocalRepository._internal();

  static final AppDatabase _appDatabase = AppDatabase();

  factory LocalRepository() => _localRepository;

  LocalRepository._internal();

  Future<List<CustomerTableData>> getAllCustomers() async {
    return _appDatabase.getAllCustomers;
  }

  Future<void> removeCustomer(CustomerTableData customer) async {
    return _appDatabase.deleteCustomer(customer.firstname,customer.lastname,customer.dateOfBirth);
  }

  Future<int> addCustomer(CustomerTableData customer) async {
    return _appDatabase.insertCustomer(customer);
  }
}

/*class CustomerRepositoryImpl implements CustomerRepository {
  final AppDatabase _appDatabase;

  const CustomerRepositoryImpl(this._appDatabase);


  @override
  Future<List<Customer>> getCustomers() async {
    return _appDatabase.customerDao.getAllCustomers();
  }

  @override
  Future<void> removeCustomer(Customer customer) async {
    return _appDatabase.customerDao.deleteCustomer(customer);
  }

  @override
  Future<void> addCustomer(Customer customer) async {
    return _appDatabase.customerDao.insertCustomer(customer);
  }
}*/
