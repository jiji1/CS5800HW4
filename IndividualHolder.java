//Individualholder extends from super class AccountHolder
class IndividualHolder extends AccountHolder{
   //variables
   String name;
   String SSN;
   //constructor
   IndividualHolder(int id, String address,String name,String SSN) {
       super(id, address);
       this.name=name;
       this.SSN=SSN;
   }
   //methods
   public String getName() {
       return name;
   }
   public void setName(String name) {
       this.name = name;
   }
   public String getSSN() {
       return SSN;
   }
   public void setSSN(String ssn2) {
       SSN = ssn2;
   }
}