import 'package:ednet_core_types/ednet_core_types.dart';
import 'package:ednet_core_types/ednet_core_types_app.dart';

main() {
  var repository = CoreRepository(); 
  EDNetCoreModels domain = repository.getDomainModels('EDNetCore');
  new TypesApp(domain);
}