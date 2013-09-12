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
public class UpdatePhoneConversationTest {
    
    public UpdatePhoneConversationTest() {
        UpdatePhoneConversation instance = new UpdatePhoneConversation();
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
     * Test of execute method, of class UpdatePhoneConversation.
     */
    @Test
    public void testExecute() {
        System.out.println("execute");
        UpdatePhoneConversation instance = new UpdatePhoneConversation("1", "Test Caller", "Test Topic", "Test Conversation");
        boolean expResult = true;
        String result = instance.execute();
        assertEquals(expResult, result.contains("UPDATE"));
    }

    /**
     * Test of isReversible method, of class UpdatePhoneConversation.
     */
    @Test
    public void testIsReversible() {
        System.out.println("isReversible");
        UpdatePhoneConversation instance = new UpdatePhoneConversation("1", "Test Caller", "Test Topic", "Test Conversation");
        boolean expResult = false;
        boolean result = instance.isReversible();
        assertEquals(expResult, result);
    }

    /**
     * Test of undo method, of class UpdatePhoneConversation.
     */
    @Test
    public void testUndo() {
        System.out.println("undo");
        boolean expResult = false;
        UpdatePhoneConversation instance = new UpdatePhoneConversation("1", "Test Caller", "Test Topic", "Test Conversation");
        instance.undo();
        assertEquals(expResult, false);
    }
}
