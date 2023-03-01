part of ednet_core_types_app;

class TypesApp {
  TypesEntries model;
  
  TypesApp(EDNetCoreModels domain) {
    model = domain.getModelEntries("Types"); 
    _load(model);
    new EntitiesTableWc(this, model.types);
  }
  
  _load(TypesEntries model) {
    String json = window.localStorage['ednet_core_types_data'];
    if (json != null && model.isEmpty) {
      model.fromJson(json);
    }
  }
  
  save() {
    window.localStorage['ednet_core_types_data'] = model.toJson();
  }
}



