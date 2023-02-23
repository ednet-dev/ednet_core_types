 
// web/ednet_core/types/dartling_types_web.dart 
 
import "dart:html"; 
 
import "package:ednet_core_default_app/ednet_core_default_app.dart"; 
import "package:dartling_types/dartling_types.dart"; 
 
initData(Repository repository) { 
   var ednetCoreDomain = repository.getDomainModels("EDNetCore"); 
   var typesModel = ednetCoreDomain.getModelEntries("Types"); 
   typesModel.init(); 
   //typesModel.display(); 
} 
 
showData(Repository repository) { 
   var mainView = new View(document, "main"); 
   mainView.repo = repository; 
   new RepoMainSection(mainView); 
} 
 
void main() { 
  var repository = new Repository(); 
  initData(repository); 
  showData(repository); 
} 
 
