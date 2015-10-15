package com.tekcomms.devops.silo.logui;

import java.util.ArrayList;
import java.util.Iterator;

public class ReportDictionary extends ArrayList<Build>{
	private static final long serialVersionUID = 1L;
	
	public Iterator<Build> fetchBuilds(){
		return this.iterator();
	}
}
