package com.tekcomms.devops.silo.logui;

import javax.naming.*;
import javax.sql.*;
import java.util.*;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;

public class SiloReportManager {

	private Connection conn = null;
	private Statement stmt = null;
	private PreparedStatement fetchContainers = null;
	private PreparedStatement fetchArtifacts = null;
	private PreparedStatement fetchBuilds = null;
//	private ReportDictionary dictionary = null;
	
	public SiloReportManager(boolean isWebApp) throws Exception{
		initialize(isWebApp);
	}//end standAlone constructor

	public SiloReportManager() throws Exception{
		initialize(true);
	}

	private void initialize(boolean isWebApp) throws Exception{
			if(isWebApp){
				Context ctx = new InitialContext();
				conn = ((DataSource) ctx.lookup("java:comp/env/jdbc/silorpt")).getConnection();
			}else{
				Properties configProps = new Properties(); 
				configProps.loadFromXML(new FileInputStream("./conf/config.xml"));
				conn = DriverManager.getConnection (configProps.getProperty("db.url"), configProps.getProperty("db.username"), configProps.getProperty("db.password"));	
				System.out.println("Connection successful [" + !conn.isClosed() + "]");
			}
			
			fetchBuilds = conn.prepareStatement("select"
					+" silobuild_id,"
					+" a.state_id as state_id,"
					+" name,"
					+" start_time,"
					+" stop_time,"
					+" arguments,"
					+" total_build_time,"
					+" started_by,"
					+" total_containers,"
					+" total_pass,"
					+" total_fail"
					+" from"
					+" silobuild a,"
					+" state b"
					+" where a.state_id = b.state_id"
					+" order by silobuild_id desc"
					+" limit 0,? ");
			
//			fetchBuilds = conn.prepareStatement("select"
//					+" silobuild_id,"
//					+" a.state_id as state_id,"
//					+" name,"
//					+" start_time,"
//					+" stop_time,"
//					+" arguments,"
//					+" total_build_time,"
//					+" started_by,"
//					+" total_containers,"
//					+" total_pass,"
//					+" total_fail"
//					+" from"
//					+" silobuild a,"
//					+" state b"
//					+" where a.state_id = b.state_id"
//					+" and a.silobuild_id = 33"
//					+" order by silobuild_id desc"
//					+" limit 0,? ");


			fetchContainers = conn.prepareStatement("select"
					+" container_id,"
					+" silobuild_id,"
					+" a.state_id as state_id,"
					+" name,"
					+" working_dir,"
					+" file_name,"
					+" start_time,"
					+" stop_time,"
					+" build_time,"
					+" error_message"
					+" from"
					+" container a,"
					+" state b"
					+" where "
					+" silobuild_id = ?"
					+" and a.state_id = b.state_id"
					+" order by container_id");
//			fetchContainers = conn.prepareStatement("select"
//					+" container_id,"
//					+" silobuild_id,"
//					+" a.state_id as state_id,"
//					+" name,"
//					+" working_dir,"
//					+" file_name,"
//					+" start_time,"
//					+" stop_time,"
//					+" build_time,"
//					+" error_message"
//					+" from"
//					+" container a,"
//					+" state b"
//					+" where "
//					+" silobuild_id = ?"
//					+" and container_id = 404"
//					+" and a.state_id = b.state_id"
//					+" order by container_id");
			
			fetchArtifacts = conn.prepareStatement("select"
					+" artifact_id,"
					+" a.state_id as state_id,"
					+" b.name as state_name,"
					+" container_id,"
					+" protocol,"
					+" start_time,"
					+" stop_time,"
					+" fetch_time,"
					+" url,"
					+" a.name as target_name,"
					+" group_id,"
					+" server,"
					+" repo,"
					+" extension,"
					+" classifier,"
					+" build_number,"
					+" version,"
					+" file_detail,"
					+" file_name,"
					+" error_message"
					+" from"
					+" artifact a,"
					+" state b"
					+" where "
					+" container_id = ?"
					+" and a.state_id = b.state_id"
					+" order by artifact_id");
	}
	
	public ReportDictionary fetchLastFive() throws Exception{
		return fetchBuildList(5);
	}
	
	Container containers = new Container();

	
	private ReportDictionary fetchBuildList(int amt) throws Exception{
		ReportDictionary dictionary = new ReportDictionary();
		fetchBuilds.setInt(1, amt);
		ResultSet rset = fetchBuilds.executeQuery();
		Build build = null;
		Container container = null;
		Artifact artifact = null;
		int build_id 		= -1;
		int container_id 	= -1;
		ResultSet crset = null;
		ResultSet arset = null;
		
		while(rset.next()){
			build = new Build();
			build_id = rset.getInt("silobuild_id");
			build.setSilobuildID(build_id);
			build.setStateID( rset.getInt("state_id") );
			build.setState( rset.getString("name") );
			build.setStart_time( rset.getString("start_time") );
			build.setStop_time( rset.getString("stop_time") );
			build.setArguments( rset.getString("arguments") );
			build.setTotal_build_time( rset.getString("total_build_time") );
			build.setStarted_by( rset.getString("started_by") );
			build.setTotal_containers( rset.getInt("total_containers") );
			build.setTotal_pass( rset.getInt("total_pass") );
			build.setTotal_fail( rset.getInt("total_fail") );	
			
			
//			System.out.println("BUILD-ID: " + build.getSilobuildID());
			
			fetchContainers.setInt(1, build_id);
			crset = fetchContainers.executeQuery();
			while(crset.next()){
				container =  new Container();
				container_id = crset.getInt("container_id");
				container.setContainerID(container_id );
				container.setSilobuildID( crset.getInt("silobuild_id") );
				container.setStateID( crset.getInt("state_id") );
				container.setState( crset.getString("name") );
				container.setWorking_dir( crset.getString("working_dir") );
				container.setFile_name( crset.getString("file_name") );
				container.setStart_time( crset.getString("start_time") );
				container.setStop_time( crset.getString("stop_time") );
				container.setBuild_time( crset.getString("build_time") );
				container.setError_message( crset.getString("error_message") );	
//				System.out.println("\t\tCONTAINER-ID: " + container.getContainerID());
				
				
				fetchArtifacts.setInt(1, container_id);
				arset =  fetchArtifacts.executeQuery();
				while(arset.next()){
					artifact = new Artifact(); 
					artifact.setArtifactID( arset.getInt("artifact_id") );
					artifact.setStateID( arset.getInt("state_id") );
					artifact.setState( arset.getString("state_name") );
					artifact.setContainerID( arset.getInt("container_id") );
					artifact.setProtocol( arset.getString("protocol") );
					artifact.setStart_time( arset.getString("start_time") );
					artifact.setStop_time( arset.getString("stop_time") );
					artifact.setFetch_time( arset.getString("fetch_time") );
					artifact.setUrl( arset.getString("url") );
					artifact.setName( arset.getString("target_name") );
					artifact.setGroupID( arset.getString("group_id") );
					artifact.setServer( arset.getString("server") );
					artifact.setRepo( arset.getString("repo") );
					artifact.setExtension( arset.getString("extension") );
					artifact.setClassifier( arset.getString("classifier") );
					artifact.setBuild_number( arset.getString("build_number") );
					artifact.setVersion( arset.getString("version") );
					artifact.setFile_detail( arset.getString("file_detail") );
					artifact.setFile_name( arset.getString("file_name") );
					artifact.setError_message( arset.getString("error_message") );					
//					System.out.println("\t\t\tARTIFACT-ID: " + artifact.getArtifactID());				
					container.add(artifact);
				}
				build.add(container);
			}
			dictionary.add(build);
		}//end builds
		return dictionary;
	}
	
	public void euthanize(){
		try{conn.close();}catch(Exception ex){}
	}
	
	public static void main(String[] args) throws Exception{
		SiloReportManager srm = new SiloReportManager(false);
		ReportDictionary lastFive = srm.fetchLastFive();
		
		for (Build b : lastFive){
			System.out.println ("--> [" + b.getSilobuildID() + "]");
			for (Container c : b){
				System.out.println ("-->  [" + b.getSilobuildID() + "] --> [" + c.getContainerID() + "]");
				for (Artifact a : c){
					System.out.println("-->  [" + b.getSilobuildID() + "] --> [" + c.getContainerID() + "] --> [" + a.getArtifactID() + "]");
				}
			}
		}
	}

}
