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
        fixHeapUp(len);
        len++;
    }

    public void delete(Integer value){
        int valueIndex = findElementIndexForDeletion(value);
        heapArray[valueIndex] = heapArray[len - 1];
        len--;
        fixHeapDown(valueIndex);
    }

    public void deleteRoot(){

    }

    public void update(Integer oldValue, Integer newValue){

    }

    public String toString(){
        StringBuilder elements = new StringBuilder();
        int heapLen = len;
        for(int i = 0; i < heapLen; i++){
            Integer element = heapArray[i];
            elements.append(element);
            elements.append(",");
        }
        return new String(elements);
    }

    private void fixHeapUp(int startIndex){
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

    private void fixHeapDown(int startIndex){
        int indexCurrent = startIndex;
        int childForSwapIndex = findChildForSwapIndex(indexCurrent);
        while(heapArray[indexCurrent] < heapArray[childForSwapIndex]){
            Integer temp = heapArray[indexCurrent];
            heapArray[indexCurrent] = heapArray[childForSwapIndex];
            heapArray[childForSwapIndex] = temp;

            indexCurrent = childForSwapIndex;
            childForSwapIndex = findChildForSwapIndex(indexCurrent);
        }

    }

    private boolean isFull(){
        return len >= MAX_LEN;
    }

    private int findChildForSwapIndex(int indexCurrent){
        int firstChildIndex = (2 * indexCurrent + 1) > len ? indexCurrent : (2 * indexCurrent + 1);
        int secondChildIndex = (2 * indexCurrent + 2) > len ? indexCurrent : (2 * indexCurrent + 2);
        return (heapArray[firstChildIndex] > heapArray[secondChildIndex]) ? firstChildIndex : secondChildIndex;
    }

    private int findElementIndexForDeletion(Integer value){
        int heapSize = len;
        for(int i = 0; i < heapSize; i++){
            Integer element = heapArray[i];
            if(element.compareTo(value) == 0){
                return i;
            }
        }
        throw new RuntimeException("Element for deletion not found");
    }

}
