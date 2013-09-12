/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.patient.misc;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.codec.binary.Hex;

/**
 *
 * @author David
 */
public class Hasher {
    /**
     * Hashing function
     * @param password
     * @return 
     */
    public static String getHash(String password) {
        MessageDigest digest;
        try {
            digest = MessageDigest.getInstance("SHA-1");
        
            byte[] hash = new byte[40];

            digest.update(password.getBytes());
            hash = digest.digest();
            String hashString = Hex.encodeHexString(hash);
            
            return hashString;
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(Hasher.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
        
    }
}
