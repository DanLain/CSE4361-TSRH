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
public class DeletePhoneRecordTest {
    
    public DeletePhoneRecordTest() {
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
     * Test of execute method, of class DeletePhoneRecord.
     */
    @Test
    public void testExecute() {
        // TODO: Make sure the query actually executes by verifying DB data
        
        System.out.println("execute");
        DeletePhoneRecord instance = new DeletePhoneRecord(1);
        boolean expResult = true;
        String result = instance.execute();
        assertEquals(expResult, true);
    }

    /**
     * Test of isReversible method, of class DeletePhoneRecord.
     */
    @Test
    public void testIsReversible() {
        System.out.println("isReversible");
        DeletePhoneRecord instance = new DeletePhoneRecord(1);
        boolean expResult = false;
        boolean result = instance.isReversible();
        assertEquals(expResult, result);
    }

    /**
     * Test of undo method, of class DeletePhoneRecord.
     */
    @Test
    public void testUndo() {
        System.out.println("undo");
        boolean expResult = false;
        DeletePhoneRecord instance = new DeletePhoneRecord(1);
        instance.undo();
        assertEquals(expResult, false);
    }
}
