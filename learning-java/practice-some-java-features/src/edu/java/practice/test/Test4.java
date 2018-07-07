package edu.java.practice.test;

import java.net.Inet4Address;

public final class Test4 {
    class Inner {
        void test() {

        }
    }

    private boolean flag = true;
    public void sample() {
        System.out.println("Sample");
    }
    public Test4() {
        (new Inner()).test();
    }

    public static void main(String[] args) {
        new Test4();
    }
}
