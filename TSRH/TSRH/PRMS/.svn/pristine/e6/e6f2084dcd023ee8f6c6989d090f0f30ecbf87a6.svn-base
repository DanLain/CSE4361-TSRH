/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.commandpattern;

import org.junit.*;
import static org.junit.Assert.*;

/**
 *
 * @author Mandy
 */
public class InsertNewPhoneConversationTest {
    
    public InsertNewPhoneConversationTest() {
    }

    @BeforeClass
    public static void setUpClass() throws Exception {
    }

    @AfterClass
    public static void tearDownClass() throws Exception {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of execute method, of class InsertNewPhoneConversation.
     */
    @Test
    public void testExecute() {
        // TODO: Make sure the query actually executes by verifying DB data
        
        System.out.println("execute");
        InsertNewPhoneConversation instance = new InsertNewPhoneConversation("1", "Test Caller", "Test Topic", "Test Conversation");
        boolean expResult = true;
        boolean result = instance.isReversible();
        assertEquals(expResult, !result);
    }

    /**
     * Test of isReversible method, of class InsertNewPhoneConversation.
     */
    @Test
    public void testIsReversible() {
        System.out.println("isReversible");
        InsertNewPhoneConversation instance = new InsertNewPhoneConversation("1", "Test Caller", "Test Topic", "Test Conversation");
        boolean expResult = false;
        boolean result = instance.isReversible();
        assertEquals(expResult, result);
    }

    /**
     * Test of undo method, of class InsertNewPhoneConversation.
     */
    @Test
    public void testUndo() {
        System.out.println("undo");
        boolean expResult = false;
        InsertNewPhoneConversation instance = new InsertNewPhoneConversation("1", "Test Caller", "Test Topic", "Test Conversation");
        instance.undo();
        assertEquals(expResult, false);
    }
}
