package com.tekcomms.devops.silo.logui;

import java.util.ArrayList;

public class Build extends ArrayList<Container>{
	private static final long serialVersionUID = 1L;
	private int 	silobuildID = -1;
	private int 	stateID = -1;
	private String  state = "";
	private String 	start_time= "";
	private String 	stop_time= "";
	private String 	arguments = "";
	private String 	total_build_time = "";
	private String 	started_by = "";
	private int 	total_containers = -1;
	private int 	total_pass = -1;
	private int		total_fail = -1;
	
	public Build() {}

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
		return notNull(state);
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getStart_time() {
		return notNull(start_time);
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public String getStop_time() {
		return notNull(stop_time);
	}

	public void setStop_time(String stop_time) {
		this.stop_time = stop_time;
	}

	public String getArguments() {
		return notNull(arguments);
	}

	public void setArguments(String arguments) {
		this.arguments = arguments;
	}

	public String getTotal_build_time() {
		return notNull(total_build_time);
	}

	public void setTotal_build_time(String total_build_time) {
		this.total_build_time = total_build_time;
	}

	public String getStarted_by() {
		return notNull(started_by);
	}

	public void setStarted_by(String started_by) {
		this.started_by = started_by;
	}

	public int getTotal_containers() {
		return total_containers;
	}

	public void setTotal_containers(int total_containers) {
		this.total_containers = total_containers;
	}

	public int getTotal_pass() {
		return total_pass;
	}

	public void setTotal_pass(int total_pass) {
		this.total_pass = total_pass;
	}

	public int getTotal_fail() {
		return total_fail;
	}

	public void setTotal_fail(int total_fail) {
		this.total_fail = total_fail;
	}
	
	private String notNull(String in){
		if( in == null || in.trim().length() == 0) return "&nbsp;";
		return in.trim();
	}

}
