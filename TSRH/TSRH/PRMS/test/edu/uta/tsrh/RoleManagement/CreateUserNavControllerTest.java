/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.uta.tsrh.RoleManagement;

import edu.uta.tsrh.model.User;
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
public class CreateUserNavControllerTest {
    
    CreateUserNavController instance;
    
    public CreateUserNavControllerTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
        instance = new CreateUserNavController();
        instance.setEmailId("1234");
        instance.setUserName("test");
        instance.setPassword("password");
        instance.setRole("role");
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getUserName method, of class CreateUserNavController.
     */
    @Test
    public void testGetUserName() {
        System.out.println("getUserName");
        String expResult = "test";
        String result = instance.getUserName();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getEmailId method, of class CreateUserNavController.
     */
    @Test
    public void testGetEmailId() {
        System.out.println("getEmailId");
        String expResult = "1234";
        String result = instance.getEmailId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getPassword method, of class CreateUserNavController.
     */
    @Test
    public void testGetPassword() {
        System.out.println("getPassword");
        String expResult = "password";
        String result = instance.getPassword();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getRole method, of class CreateUserNavController.
     */
    @Test
    public void testGetRole() {
        System.out.println("getRole");      
        String expResult = "role";
        String result = instance.getRole();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setUserName method, of class CreateUserNavController.
     */
    @Test
    public void testSetUserName() {
        System.out.println("setUserName");
        String userName = "test1";
        System.out.println(instance.getUserName());
        instance.setUserName(userName);
        System.out.println(instance.getUserName());
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setEmailId method, of class CreateUserNavController.
     */
    @Test
    public void testSetEmailId() {
        System.out.println("setEmailId");
        String emailId = "12345";
        System.out.println(instance.getEmailId());
        instance.setEmailId(emailId);
        System.out.println(instance.getEmailId());
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setPassword method, of class CreateUserNavController.
     */
    @Test
    public void testSetPassword() {
        System.out.println("setPassword");
        String password = "password1";
        System.out.println(instance.getPassword());
        instance.setPassword(password);
        System.out.println(instance.getPassword());
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setRole method, of class CreateUserNavController.
     */
    @Test
    public void testSetRole() {
        System.out.println("setRole");
        String role = "role1";
        System.out.println(instance.getRole());
        instance.setRole(role);
        System.out.println(instance.getRole());
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of createUser method, of class CreateUserNavController.
     */
    /*@Test
    public void testCreateUser() {
        System.out.println("createUser");
        User user = null;
        CreateUserNavController instance = new CreateUserNavController();
        boolean expResult = false;
        boolean result = instance.createUser(user);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    */
}
