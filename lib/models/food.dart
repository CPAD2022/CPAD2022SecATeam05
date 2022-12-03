class Food{
  num quantity;
  String imageUrl;
  String desc;
  Food(this.imageUrl,this.desc,this.quantity);

  static Food cafeFood(){
    return Food('assets/images/logo.png', 'Chinese Veg', 10);
        
  }
}