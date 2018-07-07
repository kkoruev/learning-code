package edu.java.practice.test;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Stack;

public class Main {
    public static void main(String[] args) {
        FoodFactory myFoods = new FoodFactory();
        Food food1 = myFoods.getFood("FastFood");
        Food food2 = myFoods.getFood("Fruit");
        System.out.println("My name is: " + food1.getClass().getName());
        System.out.println("My name is: " + food2.getClass().getName());
        System.out.println("Our superclass is: " +
                food1.getClass().getSuperclass().getName());
        food1.serveFood();
        food2.serveFood();
    }



    public static boolean isBalanced(String expr) {
        char openNormal = '(';
        char openCurly = '{';
        char openSquared = '[';
        char closedNormal = ')';
        char closedCurly = '}';
        char closedSquared = ']';
        Stack<Character> braces = new Stack<>();
        for (int i = 0; i < expr.length(); i++) {
            char symbolToChek = expr.charAt(i);
            if (symbolToChek == openCurly || symbolToChek == openNormal ||
                    symbolToChek == openSquared) {
                braces.add(symbolToChek);
                continue;
            }

            if (symbolToChek == closedCurly ) {
                if (braces.empty()) {
                    return false;
                }
                if (braces.pop() != openCurly){
                    return  false;
                }
            } else if (symbolToChek == closedNormal) {
                if (braces.empty()) {
                    return false;
                }

                if (braces.pop() != openNormal) {
                    return  false;
                }
            } else  if (symbolToChek == closedSquared) {
                if (braces.empty()) {
                    return false;
                }

                if (braces.pop() != openSquared) {
                    return false;
                }
            }
        }
        return braces.empty();
    }
}
