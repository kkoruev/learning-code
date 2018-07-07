package edu.java.practice.test;

public class FoodFactory {

    private final String FAST_FOOD = "FastFood";
    private final String FRUIT = "Fruit";

    public Food getFood(String foodType){
        if (FAST_FOOD.equals(foodType)) {
            return new FastFood();
        } else if (FRUIT.equals(foodType)) {
            return new Fruit();
        } else {
            throw new IllegalArgumentException("No such food type.");
        }
    }
}
