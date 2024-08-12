
class CfgRemoteExec
{

	class Functions
	{

		// Only whitelisted functions are allowed. Other values: 0 = remote execution blocked, 2 = remote execution fully allowed (no whitelist)
		mode = 2;
		// JIP flag can not be set by default (unless overriden by function or command declaration itself). Other values: 1 = JIP flag can be set
		jip = 1;

		// Note that 'allowedTargets' properties in the list below can target all machines by default! Changing them on a case-by-case basis is highly recommended.
		// Other (and recommended) values: 1 = only clients as allowed target, 2 = only server as allowed target

	};

class Commands
	{
		// Only whitelisted commands are allowed. Other values: 0 = remote execution blocked, 2 = remote execution fully allowed (no whitelist)
		mode = 1;

		// Note that blocking raw SQF command input is recommended. You should whitelist only (precompiled) functions because of security reasons.
		// See more info (and a super useful trick to increase security of your project) at the comments section of https://community.bistudio.com/wiki/remoteExec
	};

};