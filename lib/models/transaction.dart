class Transactions{
  List<Transaction> items = new List();
  Transactions();
  Transactions.fromJsonList(List<dynamic> jsonList){
    if(jsonList==null){
      return;
    }else{
      for (var item in jsonList) {
        final transactions = new Transaction.fromJson(item);
        items.add(transactions);
      }
    }
  }
}

class Transaction{
  String description;
  String imagen;
  String video;
  String title;
  int category;
  int id;
  String categoryDes;

  Transaction({
    this.description,
    this.video,
    this.id,
    this.title,
    this.category,
    this.imagen,
  });

  Transaction.fromJson(Map<String, dynamic> json){
  
    id      = json['id'];
    description  = json['description'];
    video = json['video'];
    title  = json['title'];
    category = json['category'];
    imagen  = json['imagen']; 
  } 

  String getCategory() => this.category == 1 ? 'Mitos' : (this.category == 2 ? 'Cuidados en casa' : 'Cuidados al salir');
}


