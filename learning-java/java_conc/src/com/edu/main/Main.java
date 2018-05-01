package com.edu.main;

import com.edu.com.edu.callable.futures.practice.LinesCounterCallable;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class Main {
    public static void main(String[] args) {
        ExecutorService executorService = Executors.newCachedThreadPool();
        LinesCounterCallable counterCallable =
                new LinesCounterCallable("src/com/edu");

        Future<Long> counterLinesFuture = executorService.submit(counterCallable);
        try {
            System.out.println("Waiting");
            Thread.sleep(1000);
            System.out.println(counterLinesFuture.isDone());
            System.out.println("Calling get");
            System.out.println(counterLinesFuture.get());
        } catch (InterruptedException | ExecutionException e) {
            e.printStackTrace();
        } finally {
            executorService.shutdown();
        }
    }
}
