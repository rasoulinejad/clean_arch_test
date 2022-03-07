import 'package:flutter/material.dart';

import '../../data/datasources/local/moor_database.dart';

class CustomerItemWidget extends StatelessWidget {
  final CustomerTableData customer;
  final void Function(CustomerTableData customer)? onRemove;

  const CustomerItemWidget(
    this.customer, {
    this.onRemove,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('${customer.firstname} ${customer.lastname}'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(customer.email),
          Text(customer.phoneNumber),
          Text(customer.accountNumber),
          Text(customer.dateOfBirth),
        ],
      ),
      trailing: InkWell(
        onTap: _onRemove,
        child: const Icon(Icons.delete),
      ),
    );
  }

  void _onRemove() {
    if (onRemove != null) {
      onRemove!(customer);
    }
  }
}
