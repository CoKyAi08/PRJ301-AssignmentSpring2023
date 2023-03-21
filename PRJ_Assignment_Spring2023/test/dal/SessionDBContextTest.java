/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit5TestClass.java to edit this template
 */
package dal;

import java.sql.Date;
import java.util.ArrayList;
import model.Session;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

/**
 *
 * @author minh0
 */
public class SessionDBContextTest {
    
    public SessionDBContextTest() {
    }
    
    @BeforeAll
    public static void setUpClass() {
    }
    
    @AfterAll
    public static void tearDownClass() {
    }
    
    @BeforeEach
    public void setUp() {
    }
    
    @AfterEach
    public void tearDown() {
    }

    /**
     * Test of filter method, of class SessionDBContext.
     */
    @Test
    public void testFilter() {
        System.out.println("filter");
        int lid = 0;
        Date from = null;
        Date to = null;
        SessionDBContext instance = new SessionDBContext();
        ArrayList<Session> expResult = null;
        ArrayList<Session> result = instance.filter(lid, from, to);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of insert method, of class SessionDBContext.
     */
    @Test
    public void testInsert() {
        System.out.println("insert");
        Session model = null;
        SessionDBContext instance = new SessionDBContext();
        instance.insert(model);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of update method, of class SessionDBContext.
     */
    @Test
    public void testUpdate() {
        System.out.println("update");
        Session model = null;
        SessionDBContext instance = new SessionDBContext();
        instance.update(model);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of delete method, of class SessionDBContext.
     */
    @Test
    public void testDelete() {
        System.out.println("delete");
        Session model = null;
        SessionDBContext instance = new SessionDBContext();
        instance.delete(model);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of get method, of class SessionDBContext.
     */
    @Test
    public void testGet() {
        System.out.println("get");
        int id = 0;
        SessionDBContext instance = new SessionDBContext();
        Session expResult = null;
        Session result = instance.get(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of list method, of class SessionDBContext.
     */
    @Test
    public void testList() {
        System.out.println("list");
        SessionDBContext instance = new SessionDBContext();
        ArrayList<Session> expResult = null;
        ArrayList<Session> result = instance.list();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getByGroup method, of class SessionDBContext.
     */
    @Test
    public void testGetByGroup() {
        System.out.println("getByGroup");
        int gid = 1;
        SessionDBContext instance = new SessionDBContext();
        ArrayList<Session> expResult = null;
        ArrayList<Session> result = instance.getByGroup(gid);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
