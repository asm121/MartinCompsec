package com.martin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map.Entry;
import java.util.Scanner;

import com.martin.controller.*;
//import src.main.java.webapp.String;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Random;
import java.util.Scanner;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
 

@Controller
public class MartinController {
 
	@RequestMapping("index")
	public ModelAndView index(@RequestParam(value="username",required=false) String un,
            @RequestParam(value="password",required=false) String pw
            ) throws IOException {
		    ModelAndView m = new ModelAndView("index.jsp");
		 
		 
			String enteredPW = null;
			String enteredHash = null;
			String lhash = null;
			String lname = null;
			String name = null;
			Scanner s = new Scanner(System.in);
			String hash = null;
			//Bufferreader and bufferedwriter to find and read through text file PW text file. 
			BufferedReader br = null;	
			File pwList= new File("/home/amartin/git/MartinCompsec/src/com/martin/controller/pw.txt");
			File dict= new File("/home/amartin/git/MartinCompsec/src/com/martin/controller/dictionary.txt");
			BufferedWriter bw= new BufferedWriter(new FileWriter(pwList,true));
		
			
			
				//Import all info from both text files to the arraylist


				//Import from dictionary.txt
				ArrayList<String> wList = new ArrayList<String>();
				try {
		
				    Scanner scan = new Scanner(dict);
				    while(scan.hasNext()){
				    String line = scan.next();    
				    wList.add(line);
				    }
				    
				    System.out.println("Contents of the dict file");
				    System.out.println(wList.size());
				    System.out.println(Arrays.toString(wList.toArray()));
				    scan.close();
		
				} catch (Exception e) {
		
					System.out.println("Scanner error");
				}
				
			
				//Import from pw.txt
				ArrayList<String> data = new ArrayList<String>();
				try {

				    
				    Scanner sc = new Scanner(pwList);
				    while(sc.hasNext()){
				    String line = sc.next();    
				    data.add(line);
				    }
				    
				    System.out.println("Contents of the pw file");
				    System.out.println(Arrays.toString(data.toArray()));
				    sc.close();

				} catch (Exception e) {

					System.out.println("Scanner error");
				}
		 //m.addObject("data",Arrays.toString(data.toArray()));
		m.addObject("data","Controller Passes");
		
		return m;
	}
	
	 public static String md5(String input) {

		 String md5 = null;
		
		 if(null == input) return null;
		
				 try {
				 //Create MessageDigest object for MD5
				 MessageDigest digest = MessageDigest.getInstance("MD5");
				
				 //Update input string in message digest
				 digest.update(input.getBytes(), 0, input.length());
				 //Converts message digest value in base 16 (hex)
				 md5 = new BigInteger(1, digest.digest()).toString(16);
					 } catch (NoSuchAlgorithmException e) {
						 e.printStackTrace();
			 }
		     return md5;
		 }
}

