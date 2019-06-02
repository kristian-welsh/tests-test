package {
	import asunit.framework.TestCase;
	
	public class BankAccountTest extends TestCase {
		private var instance:BankAccount;
		
		/**
		* Constructor.
		*/
		public function BankAccountTest(testMethod:String):void {
			super(testMethod);
		}
		
		/**
		* Set up an instance of BankAccount to test with.
		*/
		protected override function setUp():void {
			instance = new BankAccount();
		}
		
		/**
		* Delete testing instance.
		*/
		protected override function tearDown():void {
			instance = null;
		}
		
		/**
		* Test Initialisation.
		*/
		public function testInitialisation():void {
			assertTrue("test instance initialisation", instance is BankAccount);
		}
		
		/**
		* Test Deposit.
		*/
		public function testDeposit():void {
			instance.deposit(100);
			assertEquals("ballence in a new account after £100 deposit is £100", 100,instance.getBalance());
			instance.deposit(999.99);
			assertEquals("ballence in a new account after £100 deposit is £100", 1099.99,instance.getBalance());
		}
		
		/**
		* Test Withdraw.
		*/
		public function testWithdraw():void {
			instance.deposit(100);
			instance.withdraw(50);
			assertEquals("ballence in a new account after £100 deposit then £50 withdraw is £50", 50,instance.getBalance());
			instance.withdraw(0.5);
			assertEquals("ballence in a new account after £100 deposit then £50 withdraw then 50p withdraw is £49.5", 49.5,instance.getBalance());
		}
	}
}