package com.servlet.model;

public class ssisTest2 {


		public static void main(String[] args) {
		try {
		// create the execution process
		Process executionProcess = Runtime.getRuntime().exec("dtexec /f \"C:\\Users\\hp\\Documents\\Visual Studio 2010\\Projects\\TEST)SSIS\\TEST)SSIS\\Package.dtsx\"");
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
		


}
