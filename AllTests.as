package {
	import asunit.framework.TestSuite;
	
	public class AllTests extends TestSuite {
		public function AllTests() {
			addTest(new BankAccountTest("testInitialisation"));
			addTest(new BankAccountTest("testDeposit"));
			addTest(new BankAccountTest("testWithdraw"));
		}
	}
}