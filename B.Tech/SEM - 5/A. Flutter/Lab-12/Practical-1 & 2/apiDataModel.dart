class ApiDataModel {
  String name;
  String email;
  String city;
  int? id;

  ApiDataModel({
    required this.name,
    required this.email,
    required this.city,
    this.id
  });

  static ApiDataModel toApiDataModel({required Map<String,dynamic> data}){
    return ApiDataModel(
      name: data['name'], 
      email: data['email'], 
      city: data['city'],  
      id: int.parse(data['id'])
    );
  }

  static Map<String,dynamic> toMap({required ApiDataModel data}){
    return {
      'name': data.name,
      'email': data.email,
      'city': data.city,
      'id': data.id.toString(),
    };
  }
}