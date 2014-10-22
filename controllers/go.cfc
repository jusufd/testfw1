component accessors="true" {

	property name="NumbersService";

	// ------------------------ PUBLIC METHODS ------------------------ //
	
	public void function init( required any fw ){
		variables.fw = arguments.fw;
	}

	public void function before ( struct rc ){
	}	

	public void function main ( struct rc ) {
		var local = {};
		rc.controllersay = NumbersService.OddNumberGenerator(1,20);
	}

}