class TodoApiDataModel{
  String title;
  String description;
  bool isCompleted;
  int? id;

  TodoApiDataModel({
    required this.title,
    required this.description,
    required this.isCompleted,
    this.id
  });

  static TodoApiDataModel toTodoApiDataModel({required Map<String,dynamic> data}){
    return TodoApiDataModel(
      title: data['title'], 
      description: data['description'], 
      isCompleted: data['isCompleted'],  
      id: int.parse(data['id'])
    );
  }

  static Map<String,dynamic> toMap({required TodoApiDataModel data}){
    return {
      'title': data.title,
      'discription': data.description,
      'isCompleted': data.isCompleted,
      'id': data.id.toString(),
    };
  }
}
