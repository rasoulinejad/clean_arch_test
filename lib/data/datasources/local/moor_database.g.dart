// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class CustomerTableData extends DataClass
    implements Insertable<CustomerTableData> {
  final String firstname;
  final String lastname;
  final String dateOfBirth;
  final String phoneNumber;
  final String email;
  final String accountNumber;
  CustomerTableData(
      {required this.firstname,
      required this.lastname,
      required this.dateOfBirth,
      required this.phoneNumber,
      required this.email,
      required this.accountNumber});
  factory CustomerTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return CustomerTableData(
      firstname: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}first_name'])!,
      lastname: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_name'])!,
      dateOfBirth: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date_of_birth'])!,
      phoneNumber: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}phone_number'])!,
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}email'])!,
      accountNumber: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}account_number'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['first_name'] = Variable<String>(firstname);
    map['last_name'] = Variable<String>(lastname);
    map['date_of_birth'] = Variable<String>(dateOfBirth);
    map['phone_number'] = Variable<String>(phoneNumber);
    map['email'] = Variable<String>(email);
    map['account_number'] = Variable<String>(accountNumber);
    return map;
  }

  CustomerTableCompanion toCompanion(bool nullToAbsent) {
    return CustomerTableCompanion(
      firstname: Value(firstname),
      lastname: Value(lastname),
      dateOfBirth: Value(dateOfBirth),
      phoneNumber: Value(phoneNumber),
      email: Value(email),
      accountNumber: Value(accountNumber),
    );
  }

  factory CustomerTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return CustomerTableData(
      firstname: serializer.fromJson<String>(json['firstname']),
      lastname: serializer.fromJson<String>(json['lastname']),
      dateOfBirth: serializer.fromJson<String>(json['dateOfBirth']),
      phoneNumber: serializer.fromJson<String>(json['phoneNumber']),
      email: serializer.fromJson<String>(json['email']),
      accountNumber: serializer.fromJson<String>(json['accountNumber']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'firstname': serializer.toJson<String>(firstname),
      'lastname': serializer.toJson<String>(lastname),
      'dateOfBirth': serializer.toJson<String>(dateOfBirth),
      'phoneNumber': serializer.toJson<String>(phoneNumber),
      'email': serializer.toJson<String>(email),
      'accountNumber': serializer.toJson<String>(accountNumber),
    };
  }

  CustomerTableData copyWith(
          {String? firstname,
          String? lastname,
          String? dateOfBirth,
          String? phoneNumber,
          String? email,
          String? accountNumber}) =>
      CustomerTableData(
        firstname: firstname ?? this.firstname,
        lastname: lastname ?? this.lastname,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        email: email ?? this.email,
        accountNumber: accountNumber ?? this.accountNumber,
      );
  @override
  String toString() {
    return (StringBuffer('CustomerTableData(')
          ..write('firstname: $firstname, ')
          ..write('lastname: $lastname, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('email: $email, ')
          ..write('accountNumber: $accountNumber')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      firstname, lastname, dateOfBirth, phoneNumber, email, accountNumber);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CustomerTableData &&
          other.firstname == this.firstname &&
          other.lastname == this.lastname &&
          other.dateOfBirth == this.dateOfBirth &&
          other.phoneNumber == this.phoneNumber &&
          other.email == this.email &&
          other.accountNumber == this.accountNumber);
}

class CustomerTableCompanion extends UpdateCompanion<CustomerTableData> {
  final Value<String> firstname;
  final Value<String> lastname;
  final Value<String> dateOfBirth;
  final Value<String> phoneNumber;
  final Value<String> email;
  final Value<String> accountNumber;
  const CustomerTableCompanion({
    this.firstname = const Value.absent(),
    this.lastname = const Value.absent(),
    this.dateOfBirth = const Value.absent(),
    this.phoneNumber = const Value.absent(),
    this.email = const Value.absent(),
    this.accountNumber = const Value.absent(),
  });
  CustomerTableCompanion.insert({
    required String firstname,
    required String lastname,
    required String dateOfBirth,
    required String phoneNumber,
    required String email,
    required String accountNumber,
  })  : firstname = Value(firstname),
        lastname = Value(lastname),
        dateOfBirth = Value(dateOfBirth),
        phoneNumber = Value(phoneNumber),
        email = Value(email),
        accountNumber = Value(accountNumber);
  static Insertable<CustomerTableData> custom({
    Expression<String>? firstname,
    Expression<String>? lastname,
    Expression<String>? dateOfBirth,
    Expression<String>? phoneNumber,
    Expression<String>? email,
    Expression<String>? accountNumber,
  }) {
    return RawValuesInsertable({
      if (firstname != null) 'first_name': firstname,
      if (lastname != null) 'last_name': lastname,
      if (dateOfBirth != null) 'date_of_birth': dateOfBirth,
      if (phoneNumber != null) 'phone_number': phoneNumber,
      if (email != null) 'email': email,
      if (accountNumber != null) 'account_number': accountNumber,
    });
  }

  CustomerTableCompanion copyWith(
      {Value<String>? firstname,
      Value<String>? lastname,
      Value<String>? dateOfBirth,
      Value<String>? phoneNumber,
      Value<String>? email,
      Value<String>? accountNumber}) {
    return CustomerTableCompanion(
      firstname: firstname ?? this.firstname,
      lastname: lastname ?? this.lastname,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      accountNumber: accountNumber ?? this.accountNumber,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (firstname.present) {
      map['first_name'] = Variable<String>(firstname.value);
    }
    if (lastname.present) {
      map['last_name'] = Variable<String>(lastname.value);
    }
    if (dateOfBirth.present) {
      map['date_of_birth'] = Variable<String>(dateOfBirth.value);
    }
    if (phoneNumber.present) {
      map['phone_number'] = Variable<String>(phoneNumber.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (accountNumber.present) {
      map['account_number'] = Variable<String>(accountNumber.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerTableCompanion(')
          ..write('firstname: $firstname, ')
          ..write('lastname: $lastname, ')
          ..write('dateOfBirth: $dateOfBirth, ')
          ..write('phoneNumber: $phoneNumber, ')
          ..write('email: $email, ')
          ..write('accountNumber: $accountNumber')
          ..write(')'))
        .toString();
  }
}

class $CustomerTableTable extends CustomerTable
    with TableInfo<$CustomerTableTable, CustomerTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _firstnameMeta = const VerificationMeta('firstname');
  @override
  late final GeneratedColumn<String?> firstname = GeneratedColumn<String?>(
      'first_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _lastnameMeta = const VerificationMeta('lastname');
  @override
  late final GeneratedColumn<String?> lastname = GeneratedColumn<String?>(
      'last_name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _dateOfBirthMeta =
      const VerificationMeta('dateOfBirth');
  @override
  late final GeneratedColumn<String?> dateOfBirth = GeneratedColumn<String?>(
      'date_of_birth', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _phoneNumberMeta =
      const VerificationMeta('phoneNumber');
  @override
  late final GeneratedColumn<String?> phoneNumber = GeneratedColumn<String?>(
      'phone_number', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'email', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _accountNumberMeta =
      const VerificationMeta('accountNumber');
  @override
  late final GeneratedColumn<String?> accountNumber = GeneratedColumn<String?>(
      'account_number', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [firstname, lastname, dateOfBirth, phoneNumber, email, accountNumber];
  @override
  String get aliasedName => _alias ?? 'customer_table';
  @override
  String get actualTableName => 'customer_table';
  @override
  VerificationContext validateIntegrity(Insertable<CustomerTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('first_name')) {
      context.handle(_firstnameMeta,
          firstname.isAcceptableOrUnknown(data['first_name']!, _firstnameMeta));
    } else if (isInserting) {
      context.missing(_firstnameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastnameMeta,
          lastname.isAcceptableOrUnknown(data['last_name']!, _lastnameMeta));
    } else if (isInserting) {
      context.missing(_lastnameMeta);
    }
    if (data.containsKey('date_of_birth')) {
      context.handle(
          _dateOfBirthMeta,
          dateOfBirth.isAcceptableOrUnknown(
              data['date_of_birth']!, _dateOfBirthMeta));
    } else if (isInserting) {
      context.missing(_dateOfBirthMeta);
    }
    if (data.containsKey('phone_number')) {
      context.handle(
          _phoneNumberMeta,
          phoneNumber.isAcceptableOrUnknown(
              data['phone_number']!, _phoneNumberMeta));
    } else if (isInserting) {
      context.missing(_phoneNumberMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('account_number')) {
      context.handle(
          _accountNumberMeta,
          accountNumber.isAcceptableOrUnknown(
              data['account_number']!, _accountNumberMeta));
    } else if (isInserting) {
      context.missing(_accountNumberMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  CustomerTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return CustomerTableData.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CustomerTableTable createAlias(String alias) {
    return $CustomerTableTable(attachedDatabase, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $CustomerTableTable customerTable = $CustomerTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [customerTable];
}
