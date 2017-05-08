package com.edu.producer.consumer.pattern;

import java.util.List;

/**
 * Created by chris on 5/8/17.
 */
public class Consumer implements Runnable {
    private final List<Integer> mSharedArray;
    private static final int MAX_SIZE = 10;

    public Consumer(List<Integer> sharedArray) {
        mSharedArray = sharedArray;
    }

    public void run() {
        while (true) {
            try {
                consume();
            } catch (InterruptedException e) {
                System.out.println("EXCEPTION :(");
            }
        }
    }

    public void consume() throws InterruptedException {
        synchronized (mSharedArray) {
            if (mSharedArray.size() <= 0) {
                System.out.println("Waiting " + Thread.currentThread().getName());
                mSharedArray.wait();
                System.out.println("Done waiting " + Thread.currentThread().getName());
            }
            if (mSharedArray.size() > 0) {
                mSharedArray.remove(mSharedArray.size() - 1);
                System.out.println("Consuming " + Thread.currentThread().getName());
                System.out.println("Size of array in consumer " + mSharedArray.size());
                System.out.println("Notifying " + Thread.currentThread().getName());
                mSharedArray.notifyAll();
            }

        }
    }
}
