class AccountHolder{
   //variables
   int id;
   String address;
   //constructor
   AccountHolder(int id,String address){
       this.id=id;
       this.address=address;
   }
   //method
   public static int nextID() {
       return new Random().nextInt(1000000);
   }
}
