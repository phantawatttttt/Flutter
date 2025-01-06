class FaceMenu {
 final String name; // ชื่ออาหาร
 final int price; // ราคาอาหาร
 final List<String> ingredients; // ส่วนประกอบอาหาร
 FaceMenu(this.name, this.price, this.ingredients);
 // สุ่มรายการอาหารตัวอย่าง
 static List<FaceMenu> getSampleMenu() {
   return [
     FaceMenu("Pizza", 150, ["Cheese", "Tomato Sauce", "Pepperoni"]),
     FaceMenu("Burger", 120, ["Bun", "Beef Patty", "Lettuce"]),
     FaceMenu("Pasta", 100, ["Spaghetti", "Tomato Sauce", "Basil"]),
     FaceMenu("Sushi", 200, ["Rice", "Seaweed", "Salmon"]),
     FaceMenu("Salad", 80, ["Lettuce", "Tomato", "Cucumber"]),
   ];
 }
}