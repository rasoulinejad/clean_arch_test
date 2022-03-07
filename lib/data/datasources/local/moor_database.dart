import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

class CustomerTable extends Table {
  //IntColumn get id => integer().autoIncrement()();

  TextColumn get firstname => text().named('first_name') /*.customConstraint('UNIQUE')*/ ();

  TextColumn get lastname => text().named('last_name')();

  TextColumn get dateOfBirth => text().named('date_of_birth')();

  TextColumn get phoneNumber => text().named('phone_number')();

  TextColumn get email => text().named('email')();

  TextColumn get accountNumber => text().named('account_number')();

  @override
  List<String> get customConstraints => ['UNIQUE (first_name, last_name,date_of_birth)'];
}

@UseMoor(tables: [CustomerTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'app2.db'));
  //AppDatabase(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;

  Future<List<CustomerTableData>> get getAllCustomers => select(customerTable).get();

  void deleteCustomer(String name, String family, String birthDate) => (delete(customerTable)
        ..where((t) => t.firstname.equals(name))
        ..where((t) => t.lastname.equals(family)))
      .go();

  Future<int> insertCustomer(CustomerTableData item) {
    return into(customerTable).insert(item);
  }

/* void clearDatabase() {
    delete(customerTable).go();
  }*/

}
