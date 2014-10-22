component extends="org.fw1.framework" {
	
	this.applicationroot = getDirectoryFromPath(getCurrentTemplatePath());
	this.name = ListLast( this.applicationroot, "\/" ) & "_" & Hash( this.applicationroot );
	this.sessionmanagement = true;
	this.sessionType = "j2ee";
	this.setclientcookies = false;

	variables.framework = {
		home = 'go.main',
		defaultSection = 'go',
		defaultItem = 'main',
		baseURL = 'useCgiScriptName',
		reload = 'restart', 
		password = 'shanghai',
		generateSES = 'true',
		SESOmitIndex = 'true',
		error = 'go.error',
		usingSubsystems = false,
		maxNumContextsPreserved = 1,
		reloadApplicationOnEveryRequest = true
	};

	// ------------------------ CALLED WHEN APPLICATION STARTS ------------------------ //	
	void function setupApplication(){

        var bf = new org.fw1.ioc( "model" );
		setBeanFactory( bf );

	}	
}