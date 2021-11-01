class Account{
   //variables
   AccountHolder holder; //Accountholder object
   double balance=0.0;
   //constructor
   Account(double amt, AccountHolder holder){
       this.holder=holder;
       this.balance=amt;
   }
   //methods
   public double deposit(double amt) {
       return balance+amt;
   }
   public double withdraw(double amt) {
       return balance-amt;
   }
   public AccountHolder getHolder() {
       return holder;
   }
   public void setHolder(AccountHolder holder) {
       this.holder = holder;
   }
   public double getBalance() {
       return balance;
   }
   public void setBalance(double balance) {
       this.balance = balance;
   }
}