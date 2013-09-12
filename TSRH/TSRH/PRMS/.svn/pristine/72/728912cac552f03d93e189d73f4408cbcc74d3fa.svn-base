/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.commandpattern;

import edu.uta.tsrh.model.PhoneConvRecord;
import org.junit.*;
import static org.junit.Assert.*;

/**
 *
 * @author Mandy
 */
public class GetPhoneConversationTest {
    
    public GetPhoneConversationTest() {
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
     * Test of execute method, of class GetPhoneConversation.
     */
    @Test
    public void testExecute() {
        System.out.println("execute");
        
        // Test no phone conversation found
        GetPhoneConversation instance = new GetPhoneConversation(-1);
        int expResult = 0;
        PhoneConvRecord result = instance.execute();
        assertEquals(expResult, result.getPCID());
        
        // Test phone conversation found
        instance = new GetPhoneConversation(3);
        expResult = 3;
        result = instance.execute();
        assertEquals(expResult, result.getPCID());
    }

    /**
     * Test of isReversible method, of class GetPhoneConversation.
     */
    @Test
    public void testIsReversible() {
        System.out.println("isReversible");
        GetPhoneConversation instance = new GetPhoneConversation(1);
        boolean expResult = false;
        boolean result = instance.isReversible();
        assertEquals(expResult, result);
    }

    /**
     * Test of undo method, of class GetPhoneConversation.
     */
    @Test
    public void testUndo() {
        System.out.println("undo");
        boolean expResult = false;
        GetPhoneConversation instance = new GetPhoneConversation(1);
        instance.undo();
        assertEquals(expResult, false);
    }
}
