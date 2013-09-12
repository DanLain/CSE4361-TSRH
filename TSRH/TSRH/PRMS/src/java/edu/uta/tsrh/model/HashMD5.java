/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.model;

import java.math.BigInteger;
import java.security.*;

public class HashMD5 {

    public static String hashpw(String password){

        String md5 = null;

        if (null == password) {
            return null;
        } else {
            try {
                MessageDigest digest = MessageDigest.getInstance("MD5");

                digest.update(password.getBytes(), 0, password.length());

                md5 = new BigInteger(1, digest.digest()).toString(16);

            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return md5;
    }
    
    public static boolean checkpw(String newPassword, String oldPassword){
        
        if(oldPassword.equals(newPassword)){
            return true; 
        }   
        
        return false;
    }
}