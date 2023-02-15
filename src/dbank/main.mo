import Debug "mo:base/Debug";

actor DBank{
   var currentValue = 300;
   currentValue :=100;
   let id= 3423432423;
   //Debug.print(debug_show(id));


   
   public func topup(amount: Nat){
      currentValue +=amount;
      Debug.print(debug_show(currentValue));
   };
}
