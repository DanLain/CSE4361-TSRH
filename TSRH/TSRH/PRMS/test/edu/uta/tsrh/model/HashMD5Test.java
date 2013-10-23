/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.uta.tsrh.model;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Skychaser
 */
public class HashMD5Test {
    
    public HashMD5Test() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of hashpw method, of class HashMD5.
     */
    @Test
    public void testHashpw() {
        System.out.println("hashpw");
        String password = "password";
        String expResult = "5f4dcc3b5aa765d61d8327deb882cf99";
        String result = HashMD5.hashpw(password);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of checkpw method, of class HashMD5.
     */
    @Test
    public void testCheckpw() {
        System.out.println("checkpw");
        String newPassword = "7c6a180b36896a0a8c02787eeafb0e4c";
        String oldPassword = " ";
        boolean expResult = false;
        boolean result = HashMD5.checkpw(newPassword, oldPassword);
        assertEquals(expResult, result);
        newPassword = "7c6a180b36896a0a8c02787eeafb0e4c";
        oldPassword = "7c6a180b36896a0a8c02787eeafb0e4c";
        expResult = true;
        result = HashMD5.checkpw(newPassword, oldPassword);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
