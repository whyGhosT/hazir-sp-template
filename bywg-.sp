#define PLUGIN_NAME	"Template Plugin by. wg"
#define PLUGIN_VERSION	"0.1"
#define PLUGIN_URL	"https://github.com/whyGhosT"

#include <sourcemod>

public Plugin:myinfo = 
{
	name = PLUGIN_NAME,
	author = "wg-",
	description = "Template Plugin",
	version = PLUGIN_VERSION,
	url = PLUGIN_URL
}

public OnPluginStart()
{
	CreateConVar("sm_dc_version", PLUGIN_VERSION, "Template Plugin Version", FCVAR_PLUGIN|FCVAR_SPONLY|FCVAR_NOTIFY|FCVAR_DONTRECORD);
	
	RegConsoleCmd("sm_dc", Yazkomutukole);
}

public Action:Yazkomutukole(client, args)
{ 
	PrintToChat( client, "\x03[\x01wg\x03]\x01 Discord Adresimiz : discord.gg/xxxxxxx" );
	return Plugin_Handled;
}
