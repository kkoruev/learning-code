package com.edu.heap;

/**
 * Trying to implement heap working only with integers and using array with fixed length
 */

public class Heap {
    public static final int MAX_LEN = 10;
    private int len = 0;
    private Integer heapArray[];

    public Heap(){
        heapArray = new Integer[MAX_LEN];
    }

    public void insert(Integer value){
        if(isFull()){
            throw new RuntimeException("Heap is full!");
        }
        heapArray[len] = value;
        fixHeap(len);
        len++;
    }

    public void delete(Integer value){

    }

    public void update(Integer oldValue, Integer newValue){

    }

    public String toString(){
        StringBuilder elements = new StringBuilder();
        for(Integer element : heapArray){
            elements.append(element);
            elements.append(",");
        }
        return new String(elements);
    }

    private void fixHeap(int startIndex){
        int indexCurrent = startIndex;
        int indexParent = (indexCurrent == 0) ? 0 : (indexCurrent - 1) / 2;
        while(heapArray[indexCurrent] > heapArray[indexParent]){
            // swapping current and parent element
            Integer temp = heapArray[indexCurrent];
            heapArray[indexCurrent] = heapArray[indexParent];
            heapArray[indexParent] = temp;

            indexCurrent = indexParent;
            indexParent = (indexCurrent == 0) ? 0 : (indexCurrent - 1) / 2;
        }
    }

    private boolean isFull(){
        return len >= MAX_LEN;
    }

}
