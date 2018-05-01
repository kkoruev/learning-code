package com.edu.test;

import com.edu.objects.DeadLock;
import com.edu.objects.LongWrapper;
import com.edu.producer.consumer.pattern.Consumer;
import com.edu.producer.consumer.pattern.Producer;

import java.util.ArrayList;
import java.util.List;

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

    public static void producerCondumerTest() throws InterruptedException {
        List<Integer> list = new ArrayList<>();
        Producer producer1 = new Producer(list);
        Producer producer2 = new Producer(list);
        Producer producer3 = new Producer(list);

        Consumer consumer1 = new Consumer(list);
        Consumer consumer2 = new Consumer(list);

        Thread t1 = new Thread(producer1);
        Thread t2 = new Thread(producer2);
        Thread t3 = new Thread(producer3);

        Thread t4 = new Thread(consumer1);
        Thread t5 = new Thread(consumer2);

        t1.start();
        t2.start();
        t3.start();
        t4.start();
        t5.start();

        t1.join();
        t2.join();
        t3.join();
        t4.join();
        t5.join();
    }

    public static void main(String[] args) {
        try {
            producerCondumerTest();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
