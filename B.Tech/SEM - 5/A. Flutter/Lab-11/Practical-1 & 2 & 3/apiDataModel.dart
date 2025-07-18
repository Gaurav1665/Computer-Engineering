class ApiDataModel {
  String name;
  String email;
  String city;
  String image;
  int id;

  ApiDataModel({
    required this.name,
    required this.email,
    required this.city,
    required this.image,
    required this.id
  });

  static ApiDataModel toApiDataModel({required Map<String,dynamic> data}){
    return ApiDataModel(
      name: data['name'], 
      email: data['email'], 
      city: data['city'], 
      image: data['image'], 
      id: int.parse(data['id'])
    );
  }

  static Map<String,dynamic> toMap({required ApiDataModel data}){
    return {
      'name': data.name,
      'email': data.email,
      'city': data.city,
      'image': data.image,
      'id': data.id.toString(),
    };
  }
}