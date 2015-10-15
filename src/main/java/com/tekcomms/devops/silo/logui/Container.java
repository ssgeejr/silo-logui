package com.tekcomms.devops.silo.logui;

import java.util.ArrayList;

public class Container extends ArrayList<Artifact>{
	private static final long serialVersionUID = 1L;
	private int 	containerID	 = -1;
	private int 	silobuildID	 = -1;
	private int 	stateID	 	 = -1;
	private String  state 		 = "";
	private String 	working_dir	 = "";
	private String 	file_name	 = "";
	private String 	start_time	 = "";
	private String 	stop_time	 = "";
	private String 	build_time	 = "";
	private int 	exit_code	 = -1;
	private String 	error_message	 = "";

	public Container() {}
	
	public int getContainerID() {
		return containerID;
	}

	public void setContainerID(int containerID) {
		this.containerID = containerID;
	}

	public int getSilobuildID() {
		return silobuildID;
	}

	public void setSilobuildID(int silobuildID) {
		this.silobuildID = silobuildID;
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

	public String getWorking_dir() {
		return working_dir;
	}

	public void setWorking_dir(String working_dir) {
		this.working_dir = notNull(working_dir);
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = notNull(file_name);
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

	public String getBuild_time() {
		return build_time;
	}

	public void setBuild_time(String build_time) {
		this.build_time = notNull(build_time);
	}

	public int getExit_code() {
		return exit_code;
	}

	public void setExit_code(int exit_code) {
		this.exit_code = exit_code;
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
