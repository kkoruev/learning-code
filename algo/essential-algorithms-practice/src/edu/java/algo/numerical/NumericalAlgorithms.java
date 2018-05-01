package edu.java.algo.numerical;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class NumericalAlgorithms {

    public static <T> void randomizeArray(T[] toRandomizeArray) {
        Random random = new Random();
        for (int i = 0; i < toRandomizeArray.length; i++) {
            int randomIndex = random.nextInt(toRandomizeArray.length);
            System.out.println(randomIndex);
            T element = toRandomizeArray[i];
            T elementToSwap = toRandomizeArray[randomIndex];
            toRandomizeArray[i] = elementToSwap;
            toRandomizeArray[randomIndex] =  element;
        }
    }

    public static int gcd(int a, int b) {
        while(b != 0) {
            int remainder = a % b;
            a = b;
            b = remainder;
        }
        return a;
    }

}
