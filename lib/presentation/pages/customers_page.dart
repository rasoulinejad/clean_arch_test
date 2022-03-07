import 'package:flutter/material.dart';

import '../../data/datasources/local/moor_database.dart';
import '../../data/repositories/local_repository.dart';
import '../widgets/customer_item_widget.dart';

class CustomersPage extends StatefulWidget {
  const CustomersPage({Key? key}) : super(key: key);

  @override
  State<CustomersPage> createState() => _CustomersPageState();
}

class _CustomersPageState extends State<CustomersPage> {
  late LocalRepository localRepository;

  @override
  void initState() {
    super.initState();
    initDb();
  }

  initDb() {
    localRepository = LocalRepository();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: const Text('All Customers', style: TextStyle(color: Colors.white)),
      actions: [
        Builder(
          builder: (context) => GestureDetector(
            onTap: () => _navigate(context),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Icon(Icons.add, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return FutureBuilder<List<CustomerTableData>>(
      future: localRepository.getAllCustomers(),
      builder: (BuildContext context, AsyncSnapshot<List<CustomerTableData>> snapshot) {
        return (snapshot.hasData && snapshot.data!.isNotEmpty)
            ? ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return CustomerItemWidget(
                    snapshot.data![index],
                    onRemove: (e) async {
                      await localRepository.removeCustomer(e);
                      setState(() {});
                    },
                  );
                },
              )
            : const Center(child: Text('No Data !!!'));
      },
    );
  }

  void _navigate(BuildContext context) async {
    await Navigator.pushNamed(context, '/AddCustomerPage');
    setState(() {});
  }
}
