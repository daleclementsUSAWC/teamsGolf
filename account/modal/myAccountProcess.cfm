<cfquery datasource="#variables.DSN#" name="updatePlayer">
	update players 
		set first_name = '#form.firstName#'
			, last_name = '#form.lastName#'
			, email = '#form.email#'
	where player_id = #form.pid#
</cfquery>


<cflocation url="/index.cfm">