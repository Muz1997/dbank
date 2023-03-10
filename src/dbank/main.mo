import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Nat "mo:base/Nat";
import Float "mo:base/Float";

actor DBank{
   stable var currentValue: Float = 300;
   //currentValue :=300;

   stable var startTime = Time.now();
   //startTime := Time.now();

   
   public func topup(amount: Float){
      currentValue +=amount;
      Debug.print(debug_show(currentValue));
   };
   public func withdraw(amount: Float){
      let tempValue: Float =currentValue -amount;
      if(tempValue >=0)
      {
      currentValue -=amount;
      Debug.print(debug_show(currentValue));
      }else{
         Debug.print("Insuficient Balance")
      }
   };
   public query func checkBalance(): async Float{
      return currentValue;
   };

   public func compound(){
      let currentTime = Time.now();
      let timeElapsedNS= currentTime - startTime;
      let timeElapsedS = timeElapsedNS/1000000000;
      let timeElapsedH =  (timeElapsedS/60)/60;
      currentValue := currentValue * (1.01 ** Float.fromInt(timeElapsedH));
      startTime := currentTime;
   };
}
