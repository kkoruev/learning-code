package com.edu.objects;

/**
 * Created by chris on 4/29/17.
 */
public class LongWrapper {

    private long value = 0;
    private Object dummy = new Object();

    public void increment() {
        synchronized (dummy) {
            value++;
        }
    }

    public long getValue() {
        return value;
    }
}
