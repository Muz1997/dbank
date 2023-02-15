import Debug "mo:base/Debug";
import Nat "mo:base/Nat";

actor DBank{
   var currentValue = 300;
   currentValue :=100;
   let id= 3423432423;
   //Debug.print(debug_show(id));


   
   public func topup(amount: Nat){
      currentValue +=amount;
      Debug.print(debug_show(currentValue));
   };
   public func withdraw(amount: Nat){
      let tempValue: Int =currentValue -amount;
      if(tempValue >=0)
      {
      currentValue -=amount;
      Debug.print(debug_show(currentValue));
      }else{
         Debug.print("Insuficient Balance")
      }
   };
   public query func checkBalance(): async Nat{
      return currentValue;
   };
}
