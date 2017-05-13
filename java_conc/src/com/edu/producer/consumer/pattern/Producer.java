package com.edu.producer.consumer.pattern;

import sun.security.provider.SHA;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by chris on 5/6/17.
 */
public class Producer implements Runnable{

    private final List<Integer> mSharedArray;
    private static final int MAX_SIZE = 10;

    public Producer(List<Integer> sharedArray) {
        mSharedArray = sharedArray;
    }

    public void run() {
        for (int i = 0; i < 50; i++) {
            try {
                produce(i);
            } catch (InterruptedException e) {
                System.out.println("EXCEPTION :(");
            }
        }
    }

    private void produce(int i) throws InterruptedException {
        synchronized (mSharedArray) {
            System.out.println("WIll try to add " + Thread.currentThread().getName());
            if (mSharedArray.size() >= MAX_SIZE) {
                System.out.println("Waiting " + Thread.currentThread().getName());
                mSharedArray.wait();
                System.out.println("Done waiting " + Thread.currentThread().getName());
            }
            if (mSharedArray.size() < MAX_SIZE) {
                mSharedArray.add(i);
                System.out.println("Adding " + Thread.currentThread().getName());
                System.out.println("Size of array in producer " + mSharedArray.size());
            }
            System.out.println("Notifying " + Thread.currentThread().getName());
            mSharedArray.notifyAll();

        }
    }
}
