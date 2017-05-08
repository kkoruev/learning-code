package com.edu.producer.consumer.pattern;

import sun.security.provider.SHA;

import java.util.ArrayList;

    /**
 * Created by chris on 5/6/17.
 */
public class Producer implements Runnable{

    private final ArrayList<Integer> mSharedArray;
    private static final int MAX_SIZE = 10;

    public Producer(ArrayList<Integer> sharedArray) {
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

    public void produce(int i) throws InterruptedException {
        synchronized (mSharedArray) {
            if (mSharedArray.size() >= MAX_SIZE) {
                System.out.println("Waiting " + Thread.currentThread().getName());
                mSharedArray.wait();
                System.out.println("Done waiting " + Thread.currentThread().getName());
            }
            mSharedArray.add(i);
            System.out.println("Notifying " + Thread.currentThread().getName());
            mSharedArray.notifyAll();
        }
    }
}
