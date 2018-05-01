package edu.java.practice.test;

import java.nio.file.Path;
import java.nio.file.Paths;

public class Main {
    public static void main(String[] args) {
        Path home = Paths.get("/", "home");
        System.out.println(home);

        Path resolved = home.resolve("/home/chris");
        System.out.println(resolved);

        Path dir = Paths.get(".");
        System.out.println(dir);
        System.out.println(dir.toAbsolutePath());
    }
}
