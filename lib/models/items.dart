class Items{
  String imageUrl;
  String item1;
  String item2;
  String item3;
  Items(this.imageUrl,this.item1,this.item2,this.item3);

  static Items foodItem(){
    return Items('assets/images/logo.png','Hakka Noodles', 'Monchow Soup', ' Kimchi Salad');
        
  }
}