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
public class ArchivePhoneRecordTest {
    
    public ArchivePhoneRecordTest() {
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
     * Test of execute method, of class ArchivePhoneRecord.
     */
    @Test
    public void testExecute() {
        // TODO: Make sure the query actually executes by verifying DB data
        
        System.out.println("execute");
        ArchivePhoneRecord instance = new ArchivePhoneRecord(new PhoneConvRecord());
        boolean expResult = true;
        String result = instance.execute();
        assertEquals(expResult, result.contains("INSERT"));
    }

    /**
     * Test of isReversible method, of class ArchivePhoneRecord.
     */
    @Test
    public void testIsReversible() {
        System.out.println("isReversible");
        ArchivePhoneRecord instance = new ArchivePhoneRecord(new PhoneConvRecord());
        boolean expResult = false;
        boolean result = instance.isReversible();
        assertEquals(expResult, result);
    }

    /**
     * Test of undo method, of class ArchivePhoneRecord.
     */
    @Test
    public void testUndo() {
        System.out.println("undo");
        boolean expResult = false;
        ArchivePhoneRecord instance = new ArchivePhoneRecord(new PhoneConvRecord());
        instance.undo();
        assertEquals(expResult, false);
    }
}
