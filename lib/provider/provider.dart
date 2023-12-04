import 'package:ecommerceapp/provider/ecocontroller.dart';
import 'package:provider/provider.dart';

import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> getProvider() {
  return [
    ChangeNotifierProvider(lazy: false, create: (context) => Ecocontroller())
  ];
}
