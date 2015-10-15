<%@ page 
	language="java" 
	contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.tekcomms.devops.silo.logui.*,java.util.*" 
%>
<%
SiloReportManager reportManager = null;
StringBuffer builds = new StringBuffer();

int artifactRowID = 0;
String[] artifactClass = {"artifactRowA", "artifactRowB"};
try{
//do the heavy lifting here 
	reportManager = new SiloReportManager();
	ReportDictionary lastFive = reportManager.fetchLastFive();
		
//	Build build = lastFive.iterator().next();
	
//	for(int i = 0; i < 1; i++){
	
	int build_tables_opened = 0;
	int build_tables_closed = 0;
	int container_tables_opened = 0;
	int container_tables_closed = 0;
	int artifact_tables_opened = 0;
	int artifact_tables_closed = 0;
	
	
	
	
	for (Build build : lastFive){
		System.out.println("***** OPEN BUILD TABLE [" + build.getSilobuildID() + "]*****");
		builds.append("	<table width=\"1200\" class=\"silobuilds\" border=\"0\">\n");
		builds.append("  									  \n\t\t<!-- BUILD TABLE OPENED --> \n");	
		build_tables_opened++;
		builds.append("		<tr>\n");
		builds.append("			<th id=\"report-title\">Iris-Analytic Docker Build: #" + build.getSilobuildID() + "</th>\n");
		builds.append("    </tr>\n");
		builds.append("    <tr>\n");
		builds.append("			<td>\n");
		builds.append("				<table width=\"1200\" border=\"0\">\n");
		build_tables_opened++;
		builds.append("  									  \n\t\t<!-- BUILD TABLE OPENED [" + build_tables_opened + "][" + build_tables_closed + "][" + (build_tables_opened - build_tables_closed) + "] --> \n");	
		builds.append("					<tr>\n");
		builds.append("						<th width=\"70\" align=\"center\" valign=\"top\">Logs</th>\n");
		builds.append("						<th width=\"20\" align=\"center\" valign=\"top\"></th>\n");
		builds.append("						<th width=\"70\" align=\"center\" valign=\"top\">State</th>\n");
		builds.append("						<th width=\"50\" align=\"center\" valign=\"top\">Total</th>\n");
		builds.append("						<th width=\"50\" align=\"center\" valign=\"top\">Passed</th>\n");
		builds.append("						<th width=\"50\" align=\"center\" valign=\"top\">Failed</th>\n");
		builds.append("						<th width=\"125\" align=\"center\" valign=\"top\">Start</th>\n");
		builds.append("						<th width=\"125\" align=\"center\" valign=\"top\">Stop</th>\n");
		builds.append("						<th width=\"100\" align=\"center\" valign=\"top\">Build Time</th>\n");
		builds.append("						<th width=\"80\" align=\"center\" valign=\"top\">Owner</th>\n");
		builds.append("						<th width=\"460\" align=\"left\" valign=\"top\">Arguments</th>\n");
		builds.append("					</tr>\n");
		builds.append("					<tr>\n");
		builds.append("						<th width=\"70\" align=\"center\" valign=\"top\">\n");
		builds.append("							<a href=\"#\" target =\"\" title=\"Success Logs\"><img class=\"slog\" /></a> \n");
		builds.append("							<a href=\"#\" target =\"\" title=\"Error Logs\"><img class=\"elog\" /></a> \n");
		builds.append("							<a href=\"#\" target =\"\" title=\"Runtime Logs\"><img class=\"ilog\" /></a> \n");
		builds.append("						</th>\n");
		builds.append("						<td width=\"20\" align=\"center\" valign=\"top\"><div class=\"open\" id=\"" + build.getSilobuildID() + "\"></div></td>\n");
		builds.append("						<td width=\"70\" align=\"center\" valign=\"top\">" + build.getState() + "</td>\n");
		builds.append("						<td width=\"50\" align=\"center\" valign=\"top\">" + build.getTotal_containers() + "</td>\n");
		builds.append("						<td width=\"50\" align=\"center\" valign=\"top\">" + build.getTotal_pass() + "</td>\n");
		builds.append("						<td width=\"50\" align=\"center\" valign=\"top\">" + build.getTotal_fail() + "</td>\n");
		builds.append("						<td width=\"125\" align=\"center\" valign=\"top\">" + build.getStart_time() + "</td>\n");
		builds.append("						<td width=\"125\" align=\"center\" valign=\"top\">" + build.getStop_time() + "</td>\n");
		builds.append("						<td width=\"100\" align=\"center\" valign=\"top\">" + build.getTotal_build_time() + "</td>\n");
		builds.append("						<td width=\"80\" align=\"center\" valign=\"top\">" + build.getStarted_by() + "</td>\n");
		builds.append("						<td width=\"460\" align=\"left\" valign=\"top\">" + build.getArguments()  + "</td>\n");
		builds.append("					</tr>\n");
		builds.append("				</table>\n");
		build_tables_closed++;
		builds.append("  									  \n\t\t<!-- BUILD TABLE CLOSED [" + build_tables_opened + "][" + build_tables_closed + "][" + (build_tables_opened - build_tables_closed) + "]  --> \n");	

		builds.append("			</td>\n");
		builds.append("    	</tr>\n");

		builds.append("    	<tr class=\"details\" id=\"details" + build.getSilobuildID() +"\">\n");
		builds.append(" 	<td>\n");
		builds.append("     	<table width=\"1200\" border=\"0\">\n");
		container_tables_opened++;
		builds.append("  									  \n\t\t<!-- CONTAINER TABLE OPENED [" + container_tables_opened + "][" + container_tables_closed + "][" + (container_tables_opened - container_tables_closed) + "] --> \n");	
		builds.append("         	 <tr>\n");
		builds.append("            		<td>\n");
		builds.append("               		<table width=\"1200\" border=\"0\">\n");
		container_tables_opened++;
		builds.append("  									  \n\t\t<!-- CONTAINER TABLE OPENED [" + container_tables_opened + "][" + container_tables_closed + "][" + (container_tables_opened - container_tables_closed) + "] --> \n");	
		
		builds.append("                			<tr>\n");
		builds.append("                  			<td id=\"sub-title\" colspan=\"9\">Container Details</td>\n");
		builds.append("                			</tr>\n");
		builds.append("                			<tr>\n");
		builds.append("                  			<th width=\"20\" align=\"center\" valign=\"top\"></th>\n");
		builds.append("                  			<th width=\"65\" align=\"center\" valign=\"top\">ID</th>\n");
		builds.append("                  			<th width=\"70\" align=\"center\" valign=\"top\">State</th>\n");
		builds.append("                  			<th width=\"125\" align=\"center\" valign=\"top\">Start</th>\n");
		builds.append("                  			<th width=\"125\" align=\"center\" valign=\"top\">Stop</th>\n");
		builds.append("                  			<th width=\"100\" align=\"center\" valign=\"top\">Build Time</th>\n");
		builds.append("                  			<th width=\"125\" align=\"left\" valign=\"top\">File</th>\n");
		builds.append("                  			<th width=\"250\" align=\"left\" valign=\"top\">Dir</th>\n");
		builds.append("                  			<th width=\"335\" align=\"left\" valign=\"top\">Error Message</th>\n");
		builds.append("                			</tr>\n");
		
//		Container cntr = build.iterator().next();
		
//	for(int ii = 0; ii < 1; ii++){
		for (Container cntr : build){
			builds.append("                			<tr>\n");
			builds.append("                  			<td width=\"20\" align=\"center\" valign=\"top\">\n");
			builds.append("                  				<div class=\"cshow\" id=\"" + cntr.getContainerID() + "\"></div>\n");
			builds.append("                  			</td>\n");
			builds.append("                  			<td align=\"center\" valign=\"top\">" + cntr.getContainerID() + "</td>\n");
			builds.append("                  			<td align=\"center\" valign=\"top\">" + cntr.getState() + "</td>\n");
			builds.append("                  			<td align=\"center\" valign=\"top\">" + cntr.getStart_time() + "</td>\n");
			builds.append("                  			<td align=\"center\" valign=\"top\">" + cntr.getStop_time() + "</td>\n");
			builds.append("                  			<td align=\"center\" valign=\"top\">" + cntr.getBuild_time() + "</td>\n");
			builds.append("                  			<td align=\"left\" valign=\"top\">" + cntr.getFile_name() + "</td>\n");
			builds.append("                  			<td align=\"left\" valign=\"top\">" + cntr.getWorking_dir() + "</td>\n");
			builds.append("                  			<td align=\"left\" valign=\"top\">" + cntr.getError_message() + "</td>\n");
			builds.append("                			</tr>\n");
			System.out.println("\t**** OPEN CONTAINER TABLE [" + build.getSilobuildID() + "] [" + cntr.getContainerID() + "]*****");
			
			if(cntr.size() > 0){

				artifactRowID = 0;
				builds.append("          				<tr class=\"artifacts\" id=\"C" + cntr.getContainerID() +"\">\n");
				builds.append("            					<td colspan=\"9\">\n");
				builds.append("                					<table width=\"1200\" border=\"0\">\n");
				artifact_tables_opened++;
				builds.append("  									  \n\t\t<!-- ARTIFACT TABLE OPENED [" + artifact_tables_opened + "][" + artifact_tables_closed + "][" + (artifact_tables_opened - artifact_tables_closed) + "]  --> \n");	
				builds.append("                						<tr>\n");
				builds.append("                  						<td id=\"sub-title\" colspan=\"9\">\n");
				builds.append("                  							Artifact Details\n");
				builds.append("                  						</td>\n");
				builds.append("                						</tr>\n");
				builds.append("                						<tr id=\"artifactHeaderRow\" >\n");
				builds.append("                  						<td widtd=\"20\" align=\"center\" valign=\"top\"> </td>\n");
				builds.append("                  						<td widtd=\"45\" align=\"center\" valign=\"top\">ID</td>\n");
				builds.append("                  						<td widtd=\"70\" align=\"center\" valign=\"top\">State</td>\n");
				builds.append("                  						<td widtd=\"125\" align=\"center\" valign=\"top\">Start</td>\n");
				builds.append("                  						<td widtd=\"125\" align=\"center\" valign=\"top\">Stop</td>\n");
				builds.append("                  						<td widtd=\"100\" align=\"center\" valign=\"top\">Time</td>\n");
				builds.append("                  						<td widtd=\"200\" align=\"left\" valign=\"top\">File Name</td>\n");
				builds.append("                  						<td widtd=\"400\" align=\"left\" valign=\"top\">URL</td>\n");
				builds.append("                  						<td widtd=\"125\" align=\"left\" valign=\"top\">Error Message</td>\n");
				builds.append(" 										</tr>\n");
			 
			for(Artifact art : cntr){
				builds.append("                						<tr class=\"" + artifactClass[artifactRowID] + "\">\n");
				builds.append("                  						<td width=\"20\" align=\"center\" valign=\"top\">[IMG]</td>\n");
				builds.append("                  						<td width=\"45\" align=\"center\" valign=\"top\">" + art.getArtifactID() + "</td>\n");
				builds.append("                  						<td width=\"70\" align=\"center\" valign=\"top\">" + art.getState() + "</td>\n");
				builds.append("                  						<td width=\"125\" align=\"center\" valign=\"top\">" + art.getStart_time() + "</td>\n");
				builds.append("                  						<td width=\"125\" align=\"center\" valign=\"top\">" + art.getStop_time() + "</td>\n");
				builds.append("                  						<td width=\"100\" align=\"center\" valign=\"top\">" + art.getFetch_time() + "</td>\n");
				builds.append("                  						<td width=\"200\" align=\"left\" valign=\"top\">" + art.getFile_name() + "</td>\n");
				builds.append("                  						<td width=\"400\" align=\"left\" valign=\"top\"><a href=\"" + art.getUrl() + "\">" + art.getShortUrl() + "</a></td>\n");
				builds.append("                  						<td width=\"125\" align=\"left\" valign=\"top\"> " + art.getError_message() + " </td>\n");
				builds.append("                						</tr>\n");
				artifactRowID = (artifactRowID == 0)?1:0;
				System.out.println("\t\t**** ARTIFACT TABLE [" + build.getSilobuildID() + "] [" + cntr.getContainerID() + "] [" + art.getArtifactID() + "]*****");
				
			}//end artifacts
			
			// **** END ARTIFACT TABLE *****
			builds.append("  									  </table>\n");
			artifact_tables_closed++;
			builds.append("  									  \n\t\t<!-- ARTIFACT TABLE CLOSURE [" + artifact_tables_opened + "][" + artifact_tables_closed + "][" + (artifact_tables_opened - artifact_tables_closed) + "] --> \n");		
			builds.append("     								</td>\t\t<!-- ARTIFACT TD CLOSURE --> \n");
			builds.append("  								  </tr>\t\t<!-- ARTIFACT TR CLOSURE --> \n");
			System.out.println("\t**** END ARTIFACT TABLE [" + build.getSilobuildID() + "] [" + cntr.getContainerID() + "]*****");
			
			}//end has artifacts

		
//		System.out.println("\t**** END CONTAINER TABLE *****");
		// **** END CONTAINER TABLE *****
		
//			builds.append("     				</td>\t\t<!-- CONTAINER TD CLOSURE --> \n");
//			builds.append("  				</tr>\t\t<!-- CONTAINER TR CLOSURE --> \n");

			System.out.println("\t**** END CONTAINER TABLE [" + build.getSilobuildID() + "] [" + cntr.getContainerID() + "]*****");
		}//end containers


		container_tables_closed++;
		builds.append("  						</table>\n");	
		builds.append("  						\n\t\t<!-- CONTAINER TABLE CLOSURE [" + container_tables_opened + "][" + container_tables_closed + "][" + (container_tables_opened - container_tables_closed) + "] --> \n");	
		builds.append("     				</td>\t\t<!-- CONTAINER TD CLOSURE --> \n");
		builds.append("  				</tr>\t\t<!-- CONTAINER TR CLOSURE --> \n");
		container_tables_closed++;
		builds.append("  						</table>\n");	
		builds.append("  						\n\t\t<!-- CONTAINER TABLE CLOSURE [" + container_tables_opened + "][" + container_tables_closed + "][" + (container_tables_opened - container_tables_closed) + "] --> \n");	
		builds.append("     				</td>\t\t<!-- CONTAINER TD CLOSURE --> \n");
		builds.append("  				</tr>\t\t<!-- CONTAINER TR CLOSURE --> \n");
	builds.append("  		</table>\n");		
	build_tables_closed++;
	builds.append("  		\n\t\t<!-- BUILD TABLE CLOSURE [" + build_tables_opened + "][" + build_tables_closed + "][" + (build_tables_opened - build_tables_closed) + "]  --> \n\n");		
	
	
	
	builds.append("\n\n\t\t\t\t<!-- ARTIFACT [" + artifact_tables_opened + "][" + artifact_tables_closed + "][" + (artifact_tables_opened - artifact_tables_closed) + "] --> \n\n");
	builds.append("\n\n\t\t\t\t<!-- CONTAINER [" + container_tables_opened + "][" + container_tables_closed + "][" + (container_tables_opened - container_tables_closed) + "] --> \n\n");
	builds.append("\n\n\t\t\t\t<!-- BUILD [" + build_tables_opened + "][" + build_tables_closed + "][" + (build_tables_opened - build_tables_closed) + "] --> \n\n");
	
	
	builds.append("<div class=\"spacer\"></div>\n");
	System.out.println("***** CLOSE BUILD TABLE [" + build.getSilobuildID() + "]*****");

	}//end builds
//	builds.setLength(0);




}catch(Exception ex){
	out.println("<font color=\"red\">");
	StackTraceElement[] ste = ex.getStackTrace();
	int counter = 0;
	out.println(ex.getMessage() + "<br>");
	while(counter < ste.length && counter < 15){
		out.println(ste[counter] + "<br>");
		counter++;
	}
	out.println("</font>");
}finally{
	if(reportManager != null) reportManager.euthanize();
}
%>


<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Silo Build Log</title>
<link rel="stylesheet" type="text/css" href="silo-logui.css" />
<script src="jquery-1.11.3.min.js"></script>
<script type="text/javascript">
         $(document).ready(function(){
         $(".open, .close").click(function(event){
         $(".silobuilds tr[id='details" + $(this).attr('id') + "']").toggle();
         $(this).toggleClass("open close");
         return false;
         }); // END TOGGLE
         
         $(".cshow, .chide").click(function(event){
         $(".details tr[id='C" + $(this).attr('id') + "']").toggle();
         $(this).toggleClass("cshow chide");
         return false;
         }); // END TOGGLE
         
        
 //        $('#imagelink').click(function() {
 //       	 window.open(URL,'_logs','width=400, height=600, screenX=100');
         
         
         }); // END ready function
      </script>
</head>
<body>

<div class="repotTable" >
<%= builds.toString() %>
</div>

</body>
</html>
