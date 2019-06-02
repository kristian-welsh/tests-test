package {
	public class BankAccount{
		
		private var balance:Number = 0;
		
		public function deposit(amount:Number):void {
			balance+=amount;
		}
		
		public function withdraw(amount:Number):void {
			balance-=amount;
		}
		
		public function getBalance():Number {
			return balance;
		}
	}
}