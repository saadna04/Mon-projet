package com.servlet.model;
import java.io.BufferedReader;

import java.io.InputStreamReader;

import java.io.DataInputStream;
public class ssisTest3 {

	public static void main(String[] args) {
	try {

	// create the execution process
	Process executionProcess = Runtime.getRuntime().exec("dtexec /f \"C:\\\\Users\\\\hp\\\\Documents\\\\Visual Studio 2010\\\\Projects\\\\TEST)SSIS\\\\TEST)SSIS\\\\Package.dtsx\"");
	// create the output reader
	BufferedReader output = new BufferedReader(new InputStreamReader(new DataInputStream(executionProcess.getInputStream())));
	String readStr;
	while ((readStr = output.readLine()) != null) {
	System.out.println(readStr);
	}
	output.close();
	// wait for the process to terminate
	executionProcess.waitFor();
	// check the exit value
	if (executionProcess.exitValue() == 0) {
	System.out.println("SSIS execution succeeded\n");
	} else {
	System.out.println("SSIS execution failed\n");

	}
	} catch (Throwable e) {

	System.out.println(e.getMessage());

	}
	}

	// end of main

	 

	}

