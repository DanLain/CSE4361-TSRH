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
public class UserTest {
    User instance;
    
    public UserTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
        instance = new User(10, "Admin", "John", "Smith", "1234", "password", 12, 0);
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getFirstName method, of class User.
     */
    @Test
    public void testGetFirstName() {
        System.out.println("getFirstName");
        String expResult = "John";
        String result = instance.getFirstName();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setFirstName method, of class User.
     */
    @Test
    public void testSetFirstName() {
        System.out.println("setFirstName");
        String firstName = "Christina";
        instance.setFirstName(firstName);
        String expResult = "Christina";
        String result = instance.getFirstName();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getLastName method, of class User.
     */
    @Test
    public void testGetLastName() {
        System.out.println("getLastName");
        String expResult = "Smith";
        String result = instance.getLastName();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setLastName method, of class User.
     */
    @Test
    public void testSetLastName() {
        System.out.println("setLastName");
        String lastName = "Brown";
        instance.setLastName(lastName);
        String expResult = "Brown";
        String result = instance.getLastName();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getUserId method, of class User.
     */
    @Test
    public void testGetUserId() {
        System.out.println("getUserId");
        int expResult = 10;
        int result = instance.getUserId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setUserId method, of class User.
     */
    @Test
    public void testSetUserId() {
        System.out.println("setUserId");
        int userId = 5;
        instance.setUserId(userId);
        int expResult = 10;
        int result = instance.getUserId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getUserName method, of class User.
     */
    @Test
    public void testGetUserName() {
        System.out.println("getUserName");
        String expResult = "Admin";
        String result = instance.getUserName();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setUserName method, of class User.
     */
    @Test
    public void testSetUserName() {
        System.out.println("setUserName");
        String username = "Test";
        instance.setUserName(username);
        String expResult = "Admin";
        String result = instance.getUserName();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setPermissionValue method, of class User.
     */
    @Test
    public void testSetPermissionValue() {
        System.out.println("setPermissionValue");
        String v = "Top";
        instance.setPermissionValue(v);
        System.out.println("Remove the PermissionKey attribute and PermissionValue method, it can only be set not retrieved.");
        int expResult = 1;
        int result = instance.checkPermissionValueSet();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
    /**
     * Test of checkPermissionValueSet method, of class User.
     */
    @Test
    public void testCheckPermissionValueSet() {
        System.out.println("checkPermissionValueSet");
        User test = new User();
        int expResult = 0;
        int result = test.checkPermissionValueSet();
        assertEquals(expResult, result);
        String v = "test";
        test.setPermissionValue(v);
        expResult = 1;
        result = test.checkPermissionValueSet();
        assertEquals(expResult, result);
    }

    /**
     * Test of setPassword method, of class User.
     */
    @Test
    public void testSetPassword() {
        System.out.println("setPassword");
        String passwordhash = "password1";
        instance.setPassword(passwordhash);
        int expResult = 1;
        int result = instance.checkPasswordSet();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
    /**
     * Test of checkPasswordSet method, of class User.
     */
    @Test
    public void testCheckPasswordSet() {
        System.out.println("checkPasswordSet");
        User test = new User();
        int expResult = 0;
        int result = test.checkPasswordSet();
        assertEquals(expResult, result);
        expResult = 1;
        String passwordhash = "password";
        test.setPassword(passwordhash);
        result = test.checkPasswordSet();
        assertEquals(expResult, result);
    }

    /**
     * Test of getEmailId method, of class User.
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
     * Test of setEmailId method, of class User.
     */
    @Test
    public void testSetEmailId() {
        System.out.println("setEmailId");
        String emailId = "12345";
        instance.setEmailId(emailId);
        String expResult = "12345";
        String result = instance.getEmailId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getRoleId method, of class User.
     */
    @Test
    public void testGetRoleId() {
        System.out.println("getRoleId");
        int expResult = 12;
        int result = instance.getRoleId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setRoleId method, of class User.
     */
    @Test
    public void testSetRoleId() {
        System.out.println("setRoleId");
        int roleId = 10;
        instance.setRoleId(roleId);
        int expResult = 10;
        int result = instance.getRoleId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getFirstLogin method, of class User.
     */
    @Test
    public void testGetFirstLogin() {
        System.out.println("getFirstLogin");
        int expResult = 0;
        int result = instance.getFirstLogin();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setFirstLogin method, of class User.
     */
    @Test
    public void testSetFirstLogin() {
        System.out.println("setFirstLogin");
        int firstLogin = 1;
        instance.setFirstLogin(firstLogin);
        int expResult = 1;
        int result = instance.getFirstLogin();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getEmail method, of class User.
     */
    @Test
    public void testGetEmail() {
        System.out.println("getEmail - Duplicate Method");
        String expResult = "1234";
        String result = instance.getEmail();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setEmail method, of class User.
     */
    @Test
    public void testSetEmail() {
        System.out.println("setEmail - Duplicate Method");
        String email = "12345";
        instance.setEmail(email);
        String expResult = "1234";
        String result = instance.getEmail();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getHashedPW method, of class User.
     */
    @Test
    public void testGetHashedPW() {
        System.out.println("getHashedPW");
        String expResult = HashMD5.hashpw("password");
        String result = instance.getHashedPW();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of checkLogin method, of class User.
     */
    @Test
    public void testCheckLogin() {
        System.out.println("checkLogin");
        User instance1 = new User(10, "Admin", "John", "Smith", "1234", HashMD5.hashpw("password"), 12, 0);
        String passwordCandidate = "password";
        boolean expResult = true;
        boolean result = instance1.checkLogin(passwordCandidate);
        assertEquals(expResult, result);
        passwordCandidate = "";
        expResult = false;
        result = instance1.checkLogin(passwordCandidate);
        assertEquals(expResult, result);
        passwordCandidate = "password1";
        expResult = false;
        result = instance1.checkLogin(passwordCandidate);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of toString method, of class User.
     */
    @Test
    public void testToString() {
        System.out.println("toString");
        String expResult = "User [userId=" + instance.getUserId() + ", userName=" + instance.getUserName() + ", emailId="
            + instance.getEmailId() + "]";
        String result = instance.toString();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of setClearPass method, of class User.
     */
    @Test
    public void testSetClearPass() {
        System.out.println("setClearPass - Email password is working probably need to remove.");
        String expResult = "test";
        instance.setClearPass(expResult);
        String result = instance.getClearPass();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of getClearPass method, of class User.
     */
    @Test
    public void testGetClearPass() {
        System.out.println("getClearPass -  Email password is working probably need to remove.");
        String expResult = "test";
        instance.setClearPass("test");
        String result = instance.getClearPass();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
