package edu.algo.implementations;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class DynamicArrayTest {

    private DynamicArray<Integer> dynamicArray;

    @Before
    public void prepareData() {
        dynamicArray = new DynamicArray<>();
    }

    @Test
    public void pushElements_correctLen() {
        for (int i = 0; i < 15; i++) {
            dynamicArray.push(i);
        }
        Assert.assertEquals(15, dynamicArray.size());
    }

    @Test
    public void testInitialSize() {
        Assert.assertEquals(0, dynamicArray.size());
    }

    @Test
    public void tesGetElement() {
        dynamicArray.push(15);
        Assert.assertEquals(Integer.valueOf(15), dynamicArray.get(0));
    }

    @Test
    public void testGetElementAfterRemoval() {
        for (int i = 0; i < 15; i++) {
            dynamicArray.push(i);
        }
        dynamicArray.remove(10);
        Assert.assertEquals(Integer.valueOf(11), dynamicArray.get(10));
    }

    @Test
    public void testSizeAfterRemoval() {
        for (int i = 0; i < 15; i++) {
            dynamicArray.push(i);
        }
        dynamicArray.remove(10);
        Assert.assertEquals(14, dynamicArray.size());
    }

    @Test(expected = IndexOutOfBoundsException.class)
    public void testGetElementInvalidIndex() {
        dynamicArray.push(15);
        Assert.assertEquals(Integer.valueOf(15), dynamicArray.get(1));
    }
}
