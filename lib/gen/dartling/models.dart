part of dartling_types; 
 
// lib/gen/ednet_core/models.dart 
 
class DartlingModels extends DomainModels { 
 
  DartlingModels(Domain domain) : super(domain) { 
    // fromJsonToModel function from ednet_core/lib/domain/model/transfer.json.dart 
 
    Model model = fromJsonToModel(dartlingTypesModelJson, domain, "Types"); 
    TypesModel typesModel = new TypesModel(model); 
    add(typesModel); 
 
  } 
 
} 
 
