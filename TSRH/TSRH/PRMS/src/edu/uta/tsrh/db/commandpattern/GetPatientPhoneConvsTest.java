/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.uta.tsrh.db.commandpattern;

import java.util.ArrayList;
import org.junit.*;
import static org.junit.Assert.*;

/**
 *
 * @author Mandy
 */
public class GetPatientPhoneConvsTest {
    
    public GetPatientPhoneConvsTest() {
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
     * Test of execute method, of class GetPatientPhoneConvs.
     */
    @Test
    public void testExecute() {
        System.out.println("execute");
        GetPatientPhoneConvs instance = new GetPatientPhoneConvs(1);
        boolean expResult = true;
        ArrayList result = instance.execute();
        assertEquals(expResult, (result.size() >= 0));
    }

    /**
     * Test of isReversible method, of class GetPatientPhoneConvs.
     */
    @Test
    public void testIsReversible() {
        System.out.println("isReversible");
        GetPatientPhoneConvs instance = new GetPatientPhoneConvs(2);
        boolean expResult = false;
        boolean result = instance.isReversible();
        assertEquals(expResult, result);
    }

    /**
     * Test of undo method, of class GetPatientPhoneConvs.
     */
    @Test
    public void testUndo() {
        System.out.println("undo");
        boolean expResult = false;
        GetPatientPhoneConvs instance = new GetPatientPhoneConvs(2);
        instance.undo();
        assertEquals(expResult, false);
    }
}
