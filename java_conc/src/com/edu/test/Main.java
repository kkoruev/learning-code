package com.edu.test;

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

    public static void main(String[] args) {
        try {
            tryRaceCond();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
