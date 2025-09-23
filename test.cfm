<!--- Get newly generated teams --->
<cfquery datasource="#variables.DSN#" name="getPlayers">
    select *
    from match_players
    where match_id = 64
    order by signup_date
</cfquery>


 <cfscript>
     curdatetime = now();
     writeOutput("The local date and time are " & curdatetime & "<br/>");
     info = GetTimeZoneInfo();
     writeOutput("Total offset in seconds is " & info.utcTotalOffset & "<br/>");
     writeOutput("Offset in hours is " & info.utcHourOffset & "<br/>");
     writeOutput("Total offset in minutes minus is " & info.utcMinuteOffset & "<br/>");
     writeOutput("Total offset in seconds is " & info.isDSTOn & "<br/>");
 </cfscript>


