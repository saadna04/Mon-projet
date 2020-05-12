package com.servlet.dao;

public class SSISDAO {

		public static void run_ssis(String p) {
			try {
				// create the execution process
				Process executionProcess =Runtime.getRuntime().exec("dtexec /f \""+ p+ "\"");
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


