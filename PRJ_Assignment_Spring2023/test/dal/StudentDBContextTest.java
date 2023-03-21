/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/UnitTests/JUnit5TestClass.java to edit this template
 */
package dal;

import java.util.ArrayList;
import model.Student;
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
public class StudentDBContextTest {
    
    public StudentDBContextTest() {
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
     * Test of getByGid method, of class StudentDBContext.
     */
    @Test
    public void testGetByGid() {
        System.out.println("getByGid");
        int gid = 1;
        StudentDBContext instance = new StudentDBContext();
        ArrayList<Student> expResult = null;
        ArrayList<Student> result = instance.getByGid(gid);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of insert method, of class StudentDBContext.
     */
    @Test
    public void testInsert() {
        System.out.println("insert");
        Student model = null;
        StudentDBContext instance = new StudentDBContext();
        instance.insert(model);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of update method, of class StudentDBContext.
     */
    @Test
    public void testUpdate() {
        System.out.println("update");
        Student model = null;
        StudentDBContext instance = new StudentDBContext();
        instance.update(model);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of delete method, of class StudentDBContext.
     */
    @Test
    public void testDelete() {
        System.out.println("delete");
        Student model = null;
        StudentDBContext instance = new StudentDBContext();
        instance.delete(model);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of get method, of class StudentDBContext.
     */
    @Test
    public void testGet() {
        System.out.println("get");
        int id = 0;
        StudentDBContext instance = new StudentDBContext();
        Student expResult = null;
        Student result = instance.get(id);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of list method, of class StudentDBContext.
     */
    @Test
    public void testList() {
        System.out.println("list");
        StudentDBContext instance = new StudentDBContext();
        ArrayList<Student> expResult = null;
        ArrayList<Student> result = instance.list();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
