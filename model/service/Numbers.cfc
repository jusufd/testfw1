component accessors="true"  {

	public array function OddNumberGenerator(numeric start=0,numeric end=10) {
		var local = {};
		local.return = [];
		for(var i=arguments.start;i<=arguments.end;i++) {
			local.modResult = i % 2;
			if (local.modResult == 0)
				arrayappend(local.return,local.i);
		}
		return local.return;
	}



}	