//corporateholder extends superclass AccountHolder
class CorporateHolder extends AccountHolder{
   //variables
   String contact;
   //constructor
   CorporateHolder(int id, String address,String contact) {
       super(id, address);
       this.contact=contact;
   }
   //methods
   public String getContact() {
       return contact;
   }
   public void setContact(String contact) {
       this.contact = contact;
   }
}