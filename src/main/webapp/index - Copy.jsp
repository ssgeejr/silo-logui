<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Silo Build Log</title>
<link rel="stylesheet" type="text/css" href="poseidon.css" />
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
         
         }); // END ready function
      </script>
</head>
<body>
<div class="repotTable" >
  <table width="1200" class="silobuilds" border="0">
    <tr>
      <th id="report-title">Iris-Analytic Docker Build: 3</th>
    </tr>
    <tr>
      <td><table width="1200" border="0">
          <tr>
            <th width="20" align="center" valign="top"></th>
            <th width="70" align="center" valign="top">State</th>
            <th width="50" align="center" valign="top">Total</th>
            <th width="50" align="center" valign="top">Passed</th>
            <th width="50" align="center" valign="top">Failed</th>
            <th width="125" align="center" valign="top">Start</th>
            <th width="125" align="center" valign="top">Stop</th>
            <th width="100" align="center" valign="top">Build Time</th>
            <th width="160" align="center" valign="top">Owner</th>
            <th width="450" align="left" valign="top">Arguments</th>
          </tr>
          <tr>
            <td width="20" align="center" valign="top"><div class="open" id="1"></div></td>
            <td width="70" align="center" valign="top">Success</td>
            <td width="50" align="center" valign="top">22</td>
            <td width="50" align="center" valign="top">22</td>
            <td width="50" align="center" valign="top">0</td>
            <td width="125" align="center" valign="top">9/10/2015 14:23</td>
            <td width="125" align="center" valign="top">9/10/2015 14:50</td>
            <td width="100" align="center" valign="top">26:34.1</td>
            <td width="160" align="center" valign="top">sgee</td>
            <td width="450" align="left" valign="top">'--usedb',
              '--debug', '--tag', '--push', '--overwrite', '--forcetag',
              '--registry', 'iris-analytics.tk', '--nopurge' </td>
          </tr>
        </table>
        </td>
    </tr>
    <tr class="details" id="details1">
      <td><table width="1200" border="0">
          <tr>
            <td><table width="1200" border="0">
                <tr>
                  <td id="sub-title" colspan="9">Container Details</td>
                </tr>
                <tr>
                  <th width="20" align="center" valign="top"></th>
                  <th width="65" align="center" valign="top">ID</th>
                  <th width="70" align="center" valign="top">State</th>
                  <th width="125" align="center" valign="top">Start</th>
                  <th width="125" align="center" valign="top">Stop</th>
                  <th width="100" align="center" valign="top">Build Time</th>
                  <th width="125" align="left" valign="top">File</th>
                  <th width="250" align="left" valign="top">Dir</th>
                  <th width="335" align="left" valign="top">Error Message</th>
                </tr>
                <tr>
                  <td width="20" align="center" valign="top"><div class="cshow" id="1"></div>
                  </td>
                  <td align="center" valign="top">26</td>
                  <td align="center" valign="top">2</td>
                  <td align="center" valign="top">9/10/2015 14:50</td>
                  <td align="center" valign="top">NULL</td>
                  <td align="center" valign="top">0 0:26:33</td>
                  <td align="left" valign="top">container.xml</td>
                  <td align="left" valign="top">/opt/projects/ia-deployment/docker/provisioning</td>
                  <td align="left" valign="top"></td>
                </tr>
              </table>
          </tr>
          <tr class="artifacts" id="C1">
            <td rowspan="0"><table width="1200" border="0">
                <tr>
                  <td id="sub-title" colspan="9">Artifact Details</td>
                </tr>
                <tr>
                  <th width="20" align="center" valign="top"> </th>
                  <th width="45" align="center" valign="top">ID</th>
                  <th width="70" align="center" valign="top">State</th>
                  <th width="125" align="center" valign="top">Start</th>
                  <th width="125" align="center" valign="top">Stop</th>
                  <th width="100" align="center" valign="top">Time</th>
                  <th width="200" align="left" valign="top">File Name</th>
                  <th width="400" align="left" valign="top">URL</th>
                  <th width="125" align="left" valign="top">Error Message</th>
                </tr>
                <tr>
                  <td	 width="20" align="center" valign="top"><div Width="22" class="tooltip-wrap" id="artifact-info"> <img src="info.png" /> <span  class="tooltip-content">
                      <table class="horus">
                        <tr>
                          <td>protocol:</td>
                          <td> artifact</td>
                        </tr>
                        <tr>
                          <td>url:</td>
                          <td> http://tekcomms-artifactory.g.130949-15-scripts.tar</td>
                        </tr>
                        <tr>
                          <td>name:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>group_id:</td>
                          <td> com.tekcomms.ia</td>
                        </tr>
                        <tr>
                          <td>server:</td>
                          <td> http://tekcomms-artifactory.global.tektronix.net/artifactory</td>
                        </tr>
                        <tr>
                          <td>repo:</td>
                          <td> libs-snapshot-local</td>
                        </tr>
                        <tr>
                          <td>extension:</td>
                          <td> tar</td>
                        </tr>
                        <tr>
                          <td>classifier:</td>
                          <td> scripts</td>
                        </tr>
                        <tr>
                          <td>build_number:</td>
                          <td> 15</td>
                        </tr>
                        <tr>
                          <td>version:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>file_detail:</td>
                          <td> 0.1.1-20150910.130949-15-scripts</td>
                        </tr>
                      </table>
                      </span> </div></td>
                  <td width="45" align="center" valign="top">56</td>
                  <td width="70" align="center" valign="top">3</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:23</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:23</td>
                  <td width="100" align="center" valign="top">0 0:0:0</td>
                  <td width="200" align="left" valign="top">./ia-provisioning-0.1.1-20150910.130949-15-scripts.tar</td>
                  <td width="400" align="left" valign="top">http://tekcomms-artifactory.global.tektronix.net/artifactory/libs-snapshot-local/com/tekcomms/ia/ia-provisioning/0.1.1-SNAPSHOT/ia-provisioning-0.1.1-20150910.130949-15-scripts.tar</td>
                  <td width="125" align="left" valign="top"></td>
                </tr>
                <tr>
                  <td width="20" align="center" valign="top"><div Width="22" class="tooltip-wrap" id="artifact-info"> <img src="info.png" /> <span  class="tooltip-content">
                      <table class="horus">
                        <tr>
                          <td>protocol:</td>
                          <td> artifact</td>
                        </tr>
                        <tr>
                          <td>url:</td>
                          <td> http://tekcomms-artifactory.g.130949-15-scripts.tar</td>
                        </tr>
                        <tr>
                          <td>name:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>group_id:</td>
                          <td> com.tekcomms.ia</td>
                        </tr>
                        <tr>
                          <td>server:</td>
                          <td> http://tekcomms-artifactory.global.tektronix.net/artifactory</td>
                        </tr>
                        <tr>
                          <td>repo:</td>
                          <td> libs-snapshot-local</td>
                        </tr>
                        <tr>
                          <td>extension:</td>
                          <td> tar</td>
                        </tr>
                        <tr>
                          <td>classifier:</td>
                          <td> scripts</td>
                        </tr>
                        <tr>
                          <td>build_number:</td>
                          <td> 15</td>
                        </tr>
                        <tr>
                          <td>version:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>file_detail:</td>
                          <td> 0.1.1-20150910.130949-15-scripts</td>
                        </tr>
                      </table>
                      </span> </div></td>
                  <td width="45" align="center" valign="top">57</td>
                  <td width="70" align="center" valign="top">3</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:23</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:24</td>
                  <td width="100" align="center" valign="top">0 0:0:14</td>
                  <td width="200" align="left" valign="top">./Anaconda-2.3.0-Linux-x86_64.sh</td>
                  <td width="400" align="left" valign="top">http://tekcomms-artifactory.global.tektronix.net:8081/artifactory/UA_3rdParty/Anaconda/Anaconda/2.3.0-Linux/Anaconda-2.3.0-Linux-x86_64.sh</td>
                  <td width="125" align="left" valign="top"></td>
                </tr>
              </table></td>
          </tr>
        </table>
    </tr>
    <tr class="details" id="details1">
      <td><table width="1200" border="0">
          <tr>
            <td><table width="1200" border="0">
                <tr>
                  <th width="20" align="center" valign="top"> </th>
                  <th width="65" align="center" valign="top">ID</th>
                  <th width="70" align="center" valign="top">State</th>
                  <th width="125" align="center" valign="top">Start</th>
                  <th width="125" align="center" valign="top">Stop</th>
                  <th width="100" align="center" valign="top">Build Time</th>
                  <th width="125" align="left" valign="top">File</th>
                  <th width="250" align="left" valign="top">Dir</th>
                  <th width="335" align="left" valign="top">Error Message</th>
                </tr>
                <tr>
                  <td width="20" align="center" valign="top"><div class="cshow" id="2"></div>
                  </td>
                  <td align="center" valign="top">1226</td>
                  <td align="center" valign="top">2</td>
                  <td align="center" valign="top">9/10/2015 14:50</td>
                  <td align="center" valign="top">NULL</td>
                  <td align="center" valign="top">0 0:26:33</td>
                  <td align="left" valign="top">container.xml</td>
                  <td align="left" valign="top">/opt/projects/ia-deployment/docker/provisioning</td>
                  <td align="left" valign="top"></td>
                </tr>
              </table>
          </tr>
          <tr class="artifacts" id="C2">
            <td rowspan="0">
            <table width="1200" border="0">
                <tr>
                  <td id="sub-title" colspan="9">Artifact Details</td>
                </tr>
                <tr>
                  <th width="20" align="center" valign="top"> </th>
                  <th width="45" align="center" valign="top">ID</th>
                  <th width="70" align="center" valign="top">State</th>
                  <th width="125" align="center" valign="top">Start</th>
                  <th width="125" align="center" valign="top">Stop</th>
                  <th width="100" align="center" valign="top">Time</th>
                  <th width="200" align="left" valign="top">File Name</th>
                  <th width="400" align="left" valign="top">URL</th>
                  <th width="125" align="left" valign="top">Error Message</th>
                </tr>
                <tr>
					<td width="20" align="center" valign="top">XXXX</td>
                  <td width="45" align="center" valign="top">156</td>
                  <td width="70" align="center" valign="top">3</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:23</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:23</td>
                  <td width="100" align="center" valign="top">0 0:0:0</td>
                  <td width="200" align="left" valign="top">./ia-provisioning-0.1.1-20150910.130949-15-scripts.tar</td>
                  <td width="400" align="left" valign="top">http://tekcomms-artifactory.global.tektronix.net/artifactory/libs-snapshot-local/com/tekcomms/ia/ia-provisioning/0.1.1-SNAPSHOT/ia-provisioning-0.1.1-20150910.130949-15-scripts.tar</td>
                  <td width="125" align="left" valign="top"></td>
                </tr>
                <tr>
                  <td width="20" align="center" valign="top"><div Width="22" class="tooltip-wrap" id="artifact-info"> <img src="info.png" /> <span  class="tooltip-content">
                      <table class="horus">
                        <tr>
                          <td>protocol:</td>
                          <td> artifact</td>
                        </tr>
                        <tr>
                          <td>url:</td>
                          <td> http://tekcomms-artifactory.g.130949-15-scripts.tar</td>
                        </tr>
                        <tr>
                          <td>name:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>group_id:</td>
                          <td> com.tekcomms.ia</td>
                        </tr>
                        <tr>
                          <td>server:</td>
                          <td> http://tekcomms-artifactory.global.tektronix.net/artifactory</td>
                        </tr>
                        <tr>
                          <td>repo:</td>
                          <td> libs-snapshot-local</td>
                        </tr>
                        <tr>
                          <td>extension:</td>
                          <td> tar</td>
                        </tr>
                        <tr>
                          <td>classifier:</td>
                          <td> scripts</td>
                        </tr>
                        <tr>
                          <td>build_number:</td>
                          <td> 15</td>
                        </tr>
                        <tr>
                          <td>version:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>file_detail:</td>
                          <td> 0.1.1-20150910.130949-15-scripts</td>
                        </tr>
                      </table>
                      </span> </div></td>
                  <td width="45" align="center" valign="top">157</td>
                  <td width="70" align="center" valign="top">3</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:23</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:24</td>
                  <td width="100" align="center" valign="top">0 0:0:14</td>
                  <td width="200" align="left" valign="top">./Anaconda-2.3.0-Linux-x86_64.sh</td>
                  <td width="400" align="left" valign="top">http://tekcomms-artifactory.global.tektronix.net:8081/artifactory/UA_3rdParty/Anaconda/Anaconda/2.3.0-Linux/Anaconda-2.3.0-Linux-x86_64.sh</td>
                  <td width="125" align="left" valign="top"></td>
                </tr>
              </table></td>
          </tr>
        </table>
    </tr>
  </table>
  <hr width="100%" >
  <table width="1200" class="silobuilds" border="0">
    <tr>
      <th id="report-title">Iris-Analytic Docker Build: 4</th>
    </tr>
    <tr>
      <td><table width="1200" border="0">
          <tr>
            <th width="20" align="center" valign="top"></th>
            <th width="70" align="center" valign="top">State</th>
            <th width="50" align="center" valign="top">Total</th>
            <th width="50" align="center" valign="top">Passed</th>
            <th width="50" align="center" valign="top">Failed</th>
            <th width="125" align="center" valign="top">Start</th>
            <th width="125" align="center" valign="top">Stop</th>
            <th width="100" align="center" valign="top">Build Time</th>
            <th width="160" align="center" valign="top">Owner</th>
            <th width="450" align="left" valign="top">Arguments</th>
          </tr>
          <tr>
            <td width="20" align="center" valign="top"><div class="open" id="1"></div></td>
            <td width="70" align="center" valign="top">Success</td>
            <td width="50" align="center" valign="top">22</td>
            <td width="50" align="center" valign="top">22</td>
            <td width="50" align="center" valign="top">0</td>
            <td width="125" align="center" valign="top">9/10/2015 14:23</td>
            <td width="125" align="center" valign="top">9/10/2015 14:50</td>
            <td width="100" align="center" valign="top">26:34.1</td>
            <td width="160" align="center" valign="top">sgee</td>
            <td width="450" align="left" valign="top">'--usedb',
              '--debug', '--tag', '--push', '--overwrite', '--forcetag',
              '--registry', 'iris-analytics.tk', '--nopurge' </td>
          </tr>
        </table>
    </tr>
    <tr class="details" id="details1">
      <td><table width="1200" border="0">
          <tr>
            <td><table width="1200" border="0">
                <tr>
                  <td id="sub-title" colspan="9">Container Details</td>
                </tr>
                <tr>
                  <th width="20" align="center" valign="top"></th>
                  <th width="65" align="center" valign="top">ID</th>
                  <th width="70" align="center" valign="top">State</th>
                  <th width="125" align="center" valign="top">Start</th>
                  <th width="125" align="center" valign="top">Stop</th>
                  <th width="100" align="center" valign="top">Build Time</th>
                  <th width="125" align="left" valign="top">File</th>
                  <th width="250" align="left" valign="top">Dir</th>
                  <th width="335" align="left" valign="top">Error Message</th>
                </tr>
                <tr>
                  <td width="20" align="center" valign="top"><div class="cshow" id="1"></div>
                  </td>
                  <td align="center" valign="top">26</td>
                  <td align="center" valign="top">2</td>
                  <td align="center" valign="top">9/10/2015 14:50</td>
                  <td align="center" valign="top">NULL</td>
                  <td align="center" valign="top">0 0:26:33</td>
                  <td align="left" valign="top">container.xml</td>
                  <td align="left" valign="top">/opt/projects/ia-deployment/docker/provisioning</td>
                  <td align="left" valign="top"></td>
                </tr>
              </table>
          </tr>
          <tr class="artifacts" id="C1">
            <td rowspan="0"><table width="1200" border="0">
                <tr>
                  <td id="sub-title" colspan="9">Artifact Details</td>
                </tr>
                <tr>
                  <th width="20" align="center" valign="top"> </th>
                  <th width="45" align="center" valign="top">ID</th>
                  <th width="70" align="center" valign="top">State</th>
                  <th width="125" align="center" valign="top">Start</th>
                  <th width="125" align="center" valign="top">Stop</th>
                  <th width="100" align="center" valign="top">Time</th>
                  <th width="200" align="left" valign="top">File Name</th>
                  <th width="400" align="left" valign="top">URL</th>
                  <th width="125" align="left" valign="top">Error Message</th>
                </tr>
                <tr>
                  <td	 width="20" align="center" valign="top"><div Width="22" class="tooltip-wrap" id="artifact-info"> <img src="info.png" /> <span  class="tooltip-content">
                      <table class="horus">
                        <tr>
                          <td>protocol:</td>
                          <td> artifact</td>
                        </tr>
                        <tr>
                          <td>url:</td>
                          <td> http://tekcomms-artifactory.g.130949-15-scripts.tar</td>
                        </tr>
                        <tr>
                          <td>name:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>group_id:</td>
                          <td> com.tekcomms.ia</td>
                        </tr>
                        <tr>
                          <td>server:</td>
                          <td> http://tekcomms-artifactory.global.tektronix.net/artifactory</td>
                        </tr>
                        <tr>
                          <td>repo:</td>
                          <td> libs-snapshot-local</td>
                        </tr>
                        <tr>
                          <td>extension:</td>
                          <td> tar</td>
                        </tr>
                        <tr>
                          <td>classifier:</td>
                          <td> scripts</td>
                        </tr>
                        <tr>
                          <td>build_number:</td>
                          <td> 15</td>
                        </tr>
                        <tr>
                          <td>version:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>file_detail:</td>
                          <td> 0.1.1-20150910.130949-15-scripts</td>
                        </tr>
                      </table>
                      </span> </div></td>
                  <td width="45" align="center" valign="top">56</td>
                  <td width="70" align="center" valign="top">3</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:23</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:23</td>
                  <td width="100" align="center" valign="top">0 0:0:0</td>
                  <td width="200" align="left" valign="top">./ia-provisioning-0.1.1-20150910.130949-15-scripts.tar</td>
                  <td width="400" align="left" valign="top">http://tekcomms-artifactory.global.tektronix.net/artifactory/libs-snapshot-local/com/tekcomms/ia/ia-provisioning/0.1.1-SNAPSHOT/ia-provisioning-0.1.1-20150910.130949-15-scripts.tar</td>
                  <td width="125" align="left" valign="top"></td>
                </tr>
                <tr>
                  <td width="20" align="center" valign="top"><div Width="22" class="tooltip-wrap" id="artifact-info"> <img src="info.png" /> <span  class="tooltip-content">
                      <table class="horus">
                        <tr>
                          <td>protocol:</td>
                          <td> artifact</td>
                        </tr>
                        <tr>
                          <td>url:</td>
                          <td> http://tekcomms-artifactory.g.130949-15-scripts.tar</td>
                        </tr>
                        <tr>
                          <td>name:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>group_id:</td>
                          <td> com.tekcomms.ia</td>
                        </tr>
                        <tr>
                          <td>server:</td>
                          <td> http://tekcomms-artifactory.global.tektronix.net/artifactory</td>
                        </tr>
                        <tr>
                          <td>repo:</td>
                          <td> libs-snapshot-local</td>
                        </tr>
                        <tr>
                          <td>extension:</td>
                          <td> tar</td>
                        </tr>
                        <tr>
                          <td>classifier:</td>
                          <td> scripts</td>
                        </tr>
                        <tr>
                          <td>build_number:</td>
                          <td> 15</td>
                        </tr>
                        <tr>
                          <td>version:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>file_detail:</td>
                          <td> 0.1.1-20150910.130949-15-scripts</td>
                        </tr>
                      </table>
                      </span> </div></td>
                  <td width="45" align="center" valign="top">57</td>
                  <td width="70" align="center" valign="top">3</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:23</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:24</td>
                  <td width="100" align="center" valign="top">0 0:0:14</td>
                  <td width="200" align="left" valign="top">./Anaconda-2.3.0-Linux-x86_64.sh</td>
                  <td width="400" align="left" valign="top">http://tekcomms-artifactory.global.tektronix.net:8081/artifactory/UA_3rdParty/Anaconda/Anaconda/2.3.0-Linux/Anaconda-2.3.0-Linux-x86_64.sh</td>
                  <td width="125" align="left" valign="top"></td>
                </tr>
              </table></td>
          </tr>
        </table>
    </tr>
    <tr class="details" id="details1">
      <td><table width="1200" border="0">
          <tr>
            <td><table width="1200" border="0">
                <tr>
                  <th width="20" align="center" valign="top"> </th>
                  <th width="65" align="center" valign="top">ID</th>
                  <th width="70" align="center" valign="top">State</th>
                  <th width="125" align="center" valign="top">Start</th>
                  <th width="125" align="center" valign="top">Stop</th>
                  <th width="100" align="center" valign="top">Build Time</th>
                  <th width="125" align="left" valign="top">File</th>
                  <th width="250" align="left" valign="top">Dir</th>
                  <th width="335" align="left" valign="top">Error Message</th>
                </tr>
                <tr>
                  <td width="20" align="center" valign="top"><div class="cshow" id="2"></div>
                  </td>
                  <td align="center" valign="top">1226</td>
                  <td align="center" valign="top">2</td>
                  <td align="center" valign="top">9/10/2015 14:50</td>
                  <td align="center" valign="top">NULL</td>
                  <td align="center" valign="top">0 0:26:33</td>
                  <td align="left" valign="top">container.xml</td>
                  <td align="left" valign="top">/opt/projects/ia-deployment/docker/provisioning</td>
                  <td align="left" valign="top"></td>
                </tr>
              </table>
          </tr>
          <tr class="artifacts" id="C2">
            <td rowspan="0"><table width="1200" border="0">
                <tr>
                  <td id="sub-title" colspan="9">Artifact Details</td>
                </tr>
                <tr>
                  <th width="20" align="center" valign="top"> </th>
                  <th width="45" align="center" valign="top">ID</th>
                  <th width="70" align="center" valign="top">State</th>
                  <th width="125" align="center" valign="top">Start</th>
                  <th width="125" align="center" valign="top">Stop</th>
                  <th width="100" align="center" valign="top">Time</th>
                  <th width="200" align="left" valign="top">File Name</th>
                  <th width="400" align="left" valign="top">URL</th>
                  <th width="125" align="left" valign="top">Error Message</th>
                </tr>
                <tr>
                  <td width="20" align="center" valign="top"><div Width="22" class="tooltip-wrap" id="artifact-info"> <img src="info.png" /> <span  class="tooltip-content">
                      <table class="horus">
                        <tr>
                          <td>protocol:</td>
                          <td> artifact</td>
                        </tr>
                        <tr>
                          <td>url:</td>
                          <td> http://tekcomms-artifactory.g.130949-15-scripts.tar</td>
                        </tr>
                        <tr>
                          <td>name:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>group_id:</td>
                          <td> com.tekcomms.ia</td>
                        </tr>
                        <tr>
                          <td>server:</td>
                          <td> http://tekcomms-artifactory.global.tektronix.net/artifactory</td>
                        </tr>
                        <tr>
                          <td>repo:</td>
                          <td> libs-snapshot-local</td>
                        </tr>
                        <tr>
                          <td>extension:</td>
                          <td> tar</td>
                        </tr>
                        <tr>
                          <td>classifier:</td>
                          <td> scripts</td>
                        </tr>
                        <tr>
                          <td>build_number:</td>
                          <td> 15</td>
                        </tr>
                        <tr>
                          <td>version:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>file_detail:</td>
                          <td> 0.1.1-20150910.130949-15-scripts</td>
                        </tr>
                      </table>
                      </span> </div></td>
                  <td width="45" align="center" valign="top">156</td>
                  <td width="70" align="center" valign="top">3</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:23</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:23</td>
                  <td width="100" align="center" valign="top">0 0:0:0</td>
                  <td width="200" align="left" valign="top">./ia-provisioning-0.1.1-20150910.130949-15-scripts.tar</td>
                  <td width="400" align="left" valign="top">http://tekcomms-artifactory.global.tektronix.net/artifactory/libs-snapshot-local/com/tekcomms/ia/ia-provisioning/0.1.1-SNAPSHOT/ia-provisioning-0.1.1-20150910.130949-15-scripts.tar</td>
                  <td width="125" align="left" valign="top"></td>
                </tr>
                <tr>
                  <td width="20" align="center" valign="top"><div Width="22" class="tooltip-wrap" id="artifact-info"> <img src="info.png" /> <span  class="tooltip-content">
                      <table class="horus">
                        <tr>
                          <td>protocol:</td>
                          <td> artifact</td>
                        </tr>
                        <tr>
                          <td>url:</td>
                          <td> http://tekcomms-artifactory.g.130949-15-scripts.tar</td>
                        </tr>
                        <tr>
                          <td>name:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>group_id:</td>
                          <td> com.tekcomms.ia</td>
                        </tr>
                        <tr>
                          <td>server:</td>
                          <td> http://tekcomms-artifactory.global.tektronix.net/artifactory</td>
                        </tr>
                        <tr>
                          <td>repo:</td>
                          <td> libs-snapshot-local</td>
                        </tr>
                        <tr>
                          <td>extension:</td>
                          <td> tar</td>
                        </tr>
                        <tr>
                          <td>classifier:</td>
                          <td> scripts</td>
                        </tr>
                        <tr>
                          <td>build_number:</td>
                          <td> 15</td>
                        </tr>
                        <tr>
                          <td>version:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>file_detail:</td>
                          <td> 0.1.1-20150910.130949-15-scripts</td>
                        </tr>
                      </table>
                      </span> </div></td>
                  <td width="45" align="center" valign="top">157</td>
                  <td width="70" align="center" valign="top">3</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:23</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:24</td>
                  <td width="100" align="center" valign="top">0 0:0:14</td>
                  <td width="200" align="left" valign="top">./Anaconda-2.3.0-Linux-x86_64.sh</td>
                  <td width="400" align="left" valign="top">http://tekcomms-artifactory.global.tektronix.net:8081/artifactory/UA_3rdParty/Anaconda/Anaconda/2.3.0-Linux/Anaconda-2.3.0-Linux-x86_64.sh</td>
                  <td width="125" align="left" valign="top"></td>
                </tr>
              </table></td>
          </tr>
        </table>
    </tr>
  </table>
  <hr width="100%" >
  <table width="1200" class="silobuilds" border="0">
    <tr>
      <th id="report-title">Iris-Analytic Docker Build: 5</th>
    </tr>
    <tr>
      <td><table width="1200" border="0">
          <tr>
            <th width="20" align="center" valign="top"></th>
            <th width="70" align="center" valign="top">State</th>
            <th width="50" align="center" valign="top">Total</th>
            <th width="50" align="center" valign="top">Passed</th>
            <th width="50" align="center" valign="top">Failed</th>
            <th width="125" align="center" valign="top">Start</th>
            <th width="125" align="center" valign="top">Stop</th>
            <th width="100" align="center" valign="top">Build Time</th>
            <th width="160" align="center" valign="top">Owner</th>
            <th width="450" align="left" valign="top">Arguments</th>
          </tr>
          <tr>
            <td width="20" align="center" valign="top"><div class="open" id="1"></div></td>
            <td width="70" align="center" valign="top">Success</td>
            <td width="50" align="center" valign="top">22</td>
            <td width="50" align="center" valign="top">22</td>
            <td width="50" align="center" valign="top">0</td>
            <td width="125" align="center" valign="top">9/10/2015 14:23</td>
            <td width="125" align="center" valign="top">9/10/2015 14:50</td>
            <td width="100" align="center" valign="top">26:34.1</td>
            <td width="160" align="center" valign="top">sgee</td>
            <td width="450" align="left" valign="top">'--usedb',
              '--debug', '--tag', '--push', '--overwrite', '--forcetag',
              '--registry', 'iris-analytics.tk', '--nopurge' </td>
          </tr>
        </table>
    </tr>
    <tr class="details" id="details1">
      <td><table width="1200" border="0">
          <tr>
            <td><table width="1200" border="0">
                <tr>
                  <td id="sub-title" colspan="9">Container Details</td>
                </tr>
                <tr>
                  <th width="20" align="center" valign="top"></th>
                  <th width="65" align="center" valign="top">ID</th>
                  <th width="70" align="center" valign="top">State</th>
                  <th width="125" align="center" valign="top">Start</th>
                  <th width="125" align="center" valign="top">Stop</th>
                  <th width="100" align="center" valign="top">Build Time</th>
                  <th width="125" align="left" valign="top">File</th>
                  <th width="250" align="left" valign="top">Dir</th>
                  <th width="335" align="left" valign="top">Error Message</th>
                </tr>
                <tr>
                  <td width="20" align="center" valign="top"><div class="cshow" id="1"></div>
                  </td>
                  <td align="center" valign="top">26</td>
                  <td align="center" valign="top">2</td>
                  <td align="center" valign="top">9/10/2015 14:50</td>
                  <td align="center" valign="top">NULL</td>
                  <td align="center" valign="top">0 0:26:33</td>
                  <td align="left" valign="top">container.xml</td>
                  <td align="left" valign="top">/opt/projects/ia-deployment/docker/provisioning</td>
                  <td align="left" valign="top"></td>
                </tr>
              </table>
          </tr>
          <tr class="artifacts" id="C1">
            <td rowspan="0"><table width="1200" border="0">
                <tr>
                  <td id="sub-title" colspan="9">Artifact Details</td>
                </tr>
                <tr>
                  <th width="20" align="center" valign="top"> </th>
                  <th width="45" align="center" valign="top">ID</th>
                  <th width="70" align="center" valign="top">State</th>
                  <th width="125" align="center" valign="top">Start</th>
                  <th width="125" align="center" valign="top">Stop</th>
                  <th width="100" align="center" valign="top">Time</th>
                  <th width="200" align="left" valign="top">File Name</th>
                  <th width="400" align="left" valign="top">URL</th>
                  <th width="125" align="left" valign="top">Error Message</th>
                </tr>
                <tr>
                  <td	 width="20" align="center" valign="top"><div Width="22" class="tooltip-wrap" id="artifact-info"> <img src="info.png" /> <span  class="tooltip-content">
                      <table class="horus">
                        <tr>
                          <td>protocol:</td>
                          <td> artifact</td>
                        </tr>
                        <tr>
                          <td>url:</td>
                          <td> http://tekcomms-artifactory.g.130949-15-scripts.tar</td>
                        </tr>
                        <tr>
                          <td>name:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>group_id:</td>
                          <td> com.tekcomms.ia</td>
                        </tr>
                        <tr>
                          <td>server:</td>
                          <td> http://tekcomms-artifactory.global.tektronix.net/artifactory</td>
                        </tr>
                        <tr>
                          <td>repo:</td>
                          <td> libs-snapshot-local</td>
                        </tr>
                        <tr>
                          <td>extension:</td>
                          <td> tar</td>
                        </tr>
                        <tr>
                          <td>classifier:</td>
                          <td> scripts</td>
                        </tr>
                        <tr>
                          <td>build_number:</td>
                          <td> 15</td>
                        </tr>
                        <tr>
                          <td>version:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>file_detail:</td>
                          <td> 0.1.1-20150910.130949-15-scripts</td>
                        </tr>
                      </table>
                      </span> </div></td>
                  <td width="45" align="center" valign="top">56</td>
                  <td width="70" align="center" valign="top">3</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:23</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:23</td>
                  <td width="100" align="center" valign="top">0 0:0:0</td>
                  <td width="200" align="left" valign="top">./ia-provisioning-0.1.1-20150910.130949-15-scripts.tar</td>
                  <td width="400" align="left" valign="top">http://tekcomms-artifactory.global.tektronix.net/artifactory/libs-snapshot-local/com/tekcomms/ia/ia-provisioning/0.1.1-SNAPSHOT/ia-provisioning-0.1.1-20150910.130949-15-scripts.tar</td>
                  <td width="125" align="left" valign="top"></td>
                </tr>
                <tr>
                  <td width="20" align="center" valign="top"><div Width="22" class="tooltip-wrap" id="artifact-info"> <img src="info.png" /> <span  class="tooltip-content">
                      <table class="horus">
                        <tr>
                          <td>protocol:</td>
                          <td> artifact</td>
                        </tr>
                        <tr>
                          <td>url:</td>
                          <td> http://tekcomms-artifactory.g.130949-15-scripts.tar</td>
                        </tr>
                        <tr>
                          <td>name:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>group_id:</td>
                          <td> com.tekcomms.ia</td>
                        </tr>
                        <tr>
                          <td>server:</td>
                          <td> http://tekcomms-artifactory.global.tektronix.net/artifactory</td>
                        </tr>
                        <tr>
                          <td>repo:</td>
                          <td> libs-snapshot-local</td>
                        </tr>
                        <tr>
                          <td>extension:</td>
                          <td> tar</td>
                        </tr>
                        <tr>
                          <td>classifier:</td>
                          <td> scripts</td>
                        </tr>
                        <tr>
                          <td>build_number:</td>
                          <td> 15</td>
                        </tr>
                        <tr>
                          <td>version:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>file_detail:</td>
                          <td> 0.1.1-20150910.130949-15-scripts</td>
                        </tr>
                      </table>
                      </span> </div></td>
                  <td width="45" align="center" valign="top">57</td>
                  <td width="70" align="center" valign="top">3</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:23</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:24</td>
                  <td width="100" align="center" valign="top">0 0:0:14</td>
                  <td width="200" align="left" valign="top">./Anaconda-2.3.0-Linux-x86_64.sh</td>
                  <td width="400" align="left" valign="top">http://tekcomms-artifactory.global.tektronix.net:8081/artifactory/UA_3rdParty/Anaconda/Anaconda/2.3.0-Linux/Anaconda-2.3.0-Linux-x86_64.sh</td>
                  <td width="125" align="left" valign="top"></td>
                </tr>
              </table></td>
          </tr>
        </table>
    </tr>
    <tr class="details" id="details1">
      <td><table width="1200" border="0">
          <tr>
            <td><table width="1200" border="0">
                <tr>
                  <th width="20" align="center" valign="top"> </th>
                  <th width="65" align="center" valign="top">ID</th>
                  <th width="70" align="center" valign="top">State</th>
                  <th width="125" align="center" valign="top">Start</th>
                  <th width="125" align="center" valign="top">Stop</th>
                  <th width="100" align="center" valign="top">Build Time</th>
                  <th width="125" align="left" valign="top">File</th>
                  <th width="250" align="left" valign="top">Dir</th>
                  <th width="335" align="left" valign="top">Error Message</th>
                </tr>
                <tr>
                  <td width="20" align="center" valign="top"><div class="cshow" id="2"></div>
                  </td>
                  <td align="center" valign="top">1226</td>
                  <td align="center" valign="top">2</td>
                  <td align="center" valign="top">9/10/2015 14:50</td>
                  <td align="center" valign="top">NULL</td>
                  <td align="center" valign="top">0 0:26:33</td>
                  <td align="left" valign="top">container.xml</td>
                  <td align="left" valign="top">/opt/projects/ia-deployment/docker/provisioning</td>
                  <td align="left" valign="top"></td>
                </tr>
              </table>
          </tr>
          <tr class="artifacts" id="C2">
            <td rowspan="0"><table width="1200" border="0">
                <tr>
                  <td id="sub-title" colspan="9">Artifact Details</td>
                </tr>
                <tr>
                  <th width="20" align="center" valign="top"> </th>
                  <th width="45" align="center" valign="top">ID</th>
                  <th width="70" align="center" valign="top">State</th>
                  <th width="125" align="center" valign="top">Start</th>
                  <th width="125" align="center" valign="top">Stop</th>
                  <th width="100" align="center" valign="top">Time</th>
                  <th width="200" align="left" valign="top">File Name</th>
                  <th width="400" align="left" valign="top">URL</th>
                  <th width="125" align="left" valign="top">Error Message</th>
                </tr>
                <tr>
                  <td width="20" align="center" valign="top"><div Width="22" class="tooltip-wrap" id="artifact-info"> <img src="info.png" /> <span  class="tooltip-content">
                      <table class="horus">
                        <tr>
                          <td>protocol:</td>
                          <td> artifact</td>
                        </tr>
                        <tr>
                          <td>url:</td>
                          <td> http://tekcomms-artifactory.g.130949-15-scripts.tar</td>
                        </tr>
                        <tr>
                          <td>name:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>group_id:</td>
                          <td> com.tekcomms.ia</td>
                        </tr>
                        <tr>
                          <td>server:</td>
                          <td> http://tekcomms-artifactory.global.tektronix.net/artifactory</td>
                        </tr>
                        <tr>
                          <td>repo:</td>
                          <td> libs-snapshot-local</td>
                        </tr>
                        <tr>
                          <td>extension:</td>
                          <td> tar</td>
                        </tr>
                        <tr>
                          <td>classifier:</td>
                          <td> scripts</td>
                        </tr>
                        <tr>
                          <td>build_number:</td>
                          <td> 15</td>
                        </tr>
                        <tr>
                          <td>version:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>file_detail:</td>
                          <td> 0.1.1-20150910.130949-15-scripts</td>
                        </tr>
                      </table>
                      </span> </div></td>
                  <td width="45" align="center" valign="top">156</td>
                  <td width="70" align="center" valign="top">3</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:23</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:23</td>
                  <td width="100" align="center" valign="top">0 0:0:0</td>
                  <td width="200" align="left" valign="top">./ia-provisioning-0.1.1-20150910.130949-15-scripts.tar</td>
                  <td width="400" align="left" valign="top">http://tekcomms-artifactory.global.tektronix.net/artifactory/libs-snapshot-local/com/tekcomms/ia/ia-provisioning/0.1.1-SNAPSHOT/ia-provisioning-0.1.1-20150910.130949-15-scripts.tar</td>
                  <td width="125" align="left" valign="top"></td>
                </tr>
                <tr>
                  <td width="20" align="center" valign="top"><div Width="22" class="tooltip-wrap" id="artifact-info"> <img src="info.png" /> <span  class="tooltip-content">
                      <table class="horus">
                        <tr>
                          <td>protocol:</td>
                          <td> artifact</td>
                        </tr>
                        <tr>
                          <td>url:</td>
                          <td> http://tekcomms-artifactory.g.130949-15-scripts.tar</td>
                        </tr>
                        <tr>
                          <td>name:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>group_id:</td>
                          <td> com.tekcomms.ia</td>
                        </tr>
                        <tr>
                          <td>server:</td>
                          <td> http://tekcomms-artifactory.global.tektronix.net/artifactory</td>
                        </tr>
                        <tr>
                          <td>repo:</td>
                          <td> libs-snapshot-local</td>
                        </tr>
                        <tr>
                          <td>extension:</td>
                          <td> tar</td>
                        </tr>
                        <tr>
                          <td>classifier:</td>
                          <td> scripts</td>
                        </tr>
                        <tr>
                          <td>build_number:</td>
                          <td> 15</td>
                        </tr>
                        <tr>
                          <td>version:</td>
                          <td> NULL</td>
                        </tr>
                        <tr>
                          <td>file_detail:</td>
                          <td> 0.1.1-20150910.130949-15-scripts</td>
                        </tr>
                      </table>
                      </span> </div></td>
                  <td width="45" align="center" valign="top">157</td>
                  <td width="70" align="center" valign="top">3</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:23</td>
                  <td width="125" align="center" valign="top">9/10/2015 14:24</td>
                  <td width="100" align="center" valign="top">0 0:0:14</td>
                  <td width="200" align="left" valign="top">./Anaconda-2.3.0-Linux-x86_64.sh</td>
                  <td width="400" align="left" valign="top">http://tekcomms-artifactory.global.tektronix.net:8081/artifactory/UA_3rdParty/Anaconda/Anaconda/2.3.0-Linux/Anaconda-2.3.0-Linux-x86_64.sh</td>
                  <td width="125" align="left" valign="top"></td>
                </tr>
              </table></td>
          </tr>
        </table>
    </tr>
  </table>
</div>
</body>
</html>
