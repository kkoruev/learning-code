package edu.algo.implementations;

public class DynamicArray<T> {

    private T[] data;
    private int capacity = 10;
    private int len = 0;

    public DynamicArray() {
        data = (T[]) new Object[10];
    }

    public void push(T element) {
        if (this.len == capacity) {
            resize();
        }
        this.data[this.len] = element;
        this.len++;
    }

    public T get(int index) {
        if (index >= len) {
            throw new IndexOutOfBoundsException();
        }
        return data[index];
    }

    public T remove(int index) {
        T objectForRemoval = data[index];
        shiftToIndex(index);
        this.len = this.len - 1;
        return objectForRemoval;
    }

    public int size() {
        return this.len;
    }

    private void shiftToIndex(int index) {
        for (int i = index; i < this.len - 1; i++) {
            this.data[i] = this.data[i + 1];
        }
    }

    private void resize() {
        this.capacity = this.capacity * 2;
        T[] newData = (T[]) new Object[this.capacity];
        if (this.len >= 0) {
            System.arraycopy(this.data, 0, newData, 0, this.len);
        }
        this.data = newData;
    }
}
