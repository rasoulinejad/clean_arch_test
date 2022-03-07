import 'package:flutter/material.dart';

import '../../presentation/pages/customers_page.dart';
import '../../presentation/pages/add_customer_page.dart';

class AppRoutes {
  static Route? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const CustomersPage());

      case '/AddCustomerPage':
        return _materialRoute(const AddCustomerPage());

      default:
        return null;
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
