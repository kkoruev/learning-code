package com.edu.test;

import com.edu.objects.DeadLock;
import com.edu.objects.LongWrapper;

public class Main {

    public static void trySingleThread() throws InterruptedException {
        LongWrapper wrapper = new LongWrapper();

        Runnable r  = () -> {
            for (int i = 0; i < 100; i++) {
                wrapper.increment();
            }
        };

        Thread thread = new Thread(r);
        thread.start();
        thread.join();
        System.out.println(wrapper.getValue());

    }

    public static void tryRaceCond() throws InterruptedException {
        LongWrapper wrapper = new LongWrapper();
        int countOfThreads = 100;

        Runnable r  = () -> {
            for (int i = 0; i < 100; i++) {
                wrapper.increment();
            }
        };

        Thread[] threads = new Thread[countOfThreads];
        for (int i = 0; i < countOfThreads; i++) {
            threads[i] = new Thread(r);
            threads[i].start();
        }

        for(int i = 0; i < countOfThreads; i++) {
            threads[i].join();
        }

        System.out.println(wrapper.getValue());
    }

    public static void tryDeaLock() throws InterruptedException {
        DeadLock obj = new DeadLock();
        Runnable r1 = () -> obj.first();
        Runnable r2 = () -> obj.second();

        Thread t1 = new Thread(r1);
        t1.start();

        Thread t2 = new Thread(r2);
        t2.start();

        t1.join();
        t2.join();
    }

    public static void main(String[] args) {
        try {
            tryDeaLock();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
