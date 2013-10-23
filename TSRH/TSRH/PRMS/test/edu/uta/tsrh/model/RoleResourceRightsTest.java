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
public class RoleResourceRightsTest {
    RoleResourceRights instance;
    
    public RoleResourceRightsTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
        instance = new RoleResourceRights(10, 2, 0);
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getRoleId method, of class RoleResourceRights.
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
     * Test of setRoleId method, of class RoleResourceRights.
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
     * Test of getResourceId method, of class RoleResourceRights.
     */
    @Test
    public void testGetResourceId() {
        System.out.println("getResourceId");
        int expResult = 2;
        int result = instance.getResourceId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setResourceId method, of class RoleResourceRights.
     */
    @Test
    public void testSetResourceId() {
        System.out.println("setResourceId");
        int resourceId = 0;
        instance.setResourceId(resourceId);
        int expResult = 0;
        int result = instance.getResourceId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getReadEdit method, of class RoleResourceRights.
     */
    @Test
    public void testGetReadEdit() {
        System.out.println("getReadEdit");
        int expResult = 0;
        int result = instance.getReadEdit();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setReadEdit method, of class RoleResourceRights.
     */
    @Test
    public void testSetReadEdit() {
        System.out.println("setReadEdit");
        int readEdit = 1;
        instance.setReadEdit(readEdit);
        int expResult = 1;
        int result = instance.getReadEdit();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
