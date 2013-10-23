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
public class RoleTest {
    Role instance;
    
    public RoleTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
        instance = new Role(10, "Doctor");
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getRoleId method, of class Role.
     */
    @Test
    public void testGetRoleId() {
        System.out.println("getRoleId");
        int expResult = 10;
        int result = instance.getRoleId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getRoleName method, of class Role.
     */
    @Test
    public void testGetRoleName() {
        System.out.println("getRoleName");
        String expResult = "Doctor";
        String result = instance.getRoleName();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setRoleId method, of class Role.
     */
    @Test
    public void testSetRoleId() {
        System.out.println("setRoleId");
        int roleId = 5;
        instance.setRoleId(roleId);
        int expResult = 5;
        int result = instance.getRoleId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setRoleName method, of class Role.
     */
    @Test
    public void testSetRoleName() {
        System.out.println("setRoleName");
        String roleName = "Admin";
        instance.setRoleName(roleName);
        String expResult = "Admin";
        String result = instance.getRoleName();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
