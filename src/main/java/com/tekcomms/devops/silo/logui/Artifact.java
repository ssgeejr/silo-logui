package com.tekcomms.devops.silo.logui;

public class Artifact {
	private int 	artifactID	 = -1;
	private int 	stateID	     = -1;
	private String  state 		 = "";
	private int 	containerID	 = -1;
	private String 	protocol	 = "";
	private String 	start_time	 = "";
	private String 	stop_time	 = "";
	private String 	fetch_time	 = "";
	private String 	url	 = "";
	private String 	name	 = "";
	private String 	groupID	 = "";
	private String 	server	 = "";
	private String 	repo	 = "";
	private String 	extension	 = "";
	private String 	classifier	 = "";
	private String 	build_number	 = "";
	private String 	version	 = "";
	private String 	file_detail	 = "";
	private String 	file_name	 = "";
	private String 	error_message	 = "";

	public Artifact() {}
	
	
	public int getArtifactID() {
		return artifactID;
	}

	public void setArtifactID(int artifactID) {
		this.artifactID = artifactID;
	}

	public int getStateID() {
		return stateID;
	}

	public void setStateID(int stateID) {
		this.stateID = stateID;
	}

	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = notNull(state);
	}


	public int getContainerID() {
		return containerID;
	}

	public void setContainerID(int containerID) {
		this.containerID = containerID;
	}

	public String getProtocol() {
		return protocol;
	}

	public void setProtocol(String protocol) {
		this.protocol = notNull(protocol);
	}

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = notNull(start_time);
	}

	public String getStop_time() {
		return stop_time;
	}

	public void setStop_time(String stop_time) {
		this.stop_time = notNull(stop_time);
	}

	public String getFetch_time() {
		return fetch_time;
	}

	public void setFetch_time(String fetch_time) {
		this.fetch_time = notNull(fetch_time);
	}

	public String getUrl() {
		return url;
	}

	public String getShortUrl(){
		if(url.length() > 44){
			return "... " + url.substring((url.length() - 44));
		}else
			return url;
	}
	
	public void setUrl(String url) {
		this.url = notNull(url);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = notNull(name);
	}

	public String getGroupID() {
		return groupID;
	}

	public void setGroupID(String groupID) {
		this.groupID = notNull(groupID);
	}

	public String getServer() {
		return server;
	}

	public void setServer(String server) {
		this.server = notNull(server);
	}

	public String getRepo() {
		return repo;
	}

	public void setRepo(String repo) {
		this.repo = notNull(repo);
	}

	public String getExtension() {
		return extension;
	}

	public void setExtension(String extension) {
		this.extension = notNull(extension);
	}

	public String getClassifier() {
		return classifier;
	}

	public void setClassifier(String classifier) {
		this.classifier = notNull(classifier);
	}

	public String getBuild_number() {
		return build_number;
	}

	public void setBuild_number(String build_number) {
		this.build_number = notNull(build_number);
	}

	public String getVersion() {
		return version;
	}

	public void setVersion(String version) {
		this.version = notNull(version);
	}

	public String getFile_detail() {
		return file_detail;
	}

	public void setFile_detail(String file_detail) {
		this.file_detail = notNull(file_detail);
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = notNull(file_name);
	}

	public String getError_message() {
		return error_message;
	}

	public void setError_message(String error_message) {
		this.error_message = notNull(error_message);
	}
	
	private String notNull(String in){
		if( in == null || in.trim().length() == 0) return "&nbsp;";
		return in.trim();
	}


}
