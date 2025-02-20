part of ednet_core_types; 
 
// lib/gen/ednet_core/types/model_entries.dart
 
class TypesEntries extends ModelEntries { 
 
  TypesEntries(Model model) : super(model); 
 
  Map<String, Entities> newEntries() { 
    var entries = new Map<String, Entities>(); 
    var concept; 
    concept = model.concepts.singleWhereCode("Type"); 
    entries["Type"] = new Types(concept); 
    return entries; 
  } 
 
  Entities? newEntities(String conceptCode) { 
    var concept = model.concepts.singleWhereCode(conceptCode); 
    if (concept == null) { 
      throw new ConceptError("${conceptCode} concept does not exist.") ; 
    } 
    if (concept.code == "Type") { 
      return new Types(concept); 
    } 
    return null; 
  } 
 
  Entity? newEntity(String conceptCode) { 
    var concept = model.concepts.singleWhereCode(conceptCode); 
    if (concept == null) { 
      throw new ConceptError("${conceptCode} concept does not exist.") ; 
    } 
    if (concept.code == "Type") { 
      return new Type(concept); 
    } 
    return null; 
  } 
 
  Types get types => getEntry("Type"); 
 
} 
 
