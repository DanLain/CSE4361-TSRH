/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.uta.tsrh.RoleManagement.Helper;

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
public class AdminConfigReaderTest {
    
    public AdminConfigReaderTest() {
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
     * Test of getProperty method, of class AdminConfigReader.
     */
    @Test
    public void testGetProperty() {
        System.out.println("getProperty");
        String key = "admin_password";
        AdminConfigReader instance = new AdminConfigReader();
        String expResult = "admin_tsrh";
        String result = instance.getProperty(key);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
