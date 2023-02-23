 
// test/ednet_core/types/dartling_types_gen.dart 
 
import "package:dartling_types/dartling_types.dart"; 
 
genCode(Repository repository) { 
  repository.gen("dartling_types"); 
} 
 
initData(Repository repository) { 
   var ednetCoreDomain = repository.getDomainModels("EDNetCore"); 
   var typesModel = ednetCoreDomain.getModelEntries("Types"); 
   typesModel.init(); 
   //typesModel.display(); 
} 
 
void main() { 
  var repository = new Repository(); 
  genCode(repository); 
  //initData(repository); 
} 
 
