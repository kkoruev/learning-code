package com.edu.com.edu.callable.futures.practice;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.stream.Collectors;

public class LinesCounterCallable implements Callable<Long> {

    private String mPathToBasePackage;

    private long linesOfCode = 0;

    public LinesCounterCallable(String pathToBasePackage) {
        mPathToBasePackage = pathToBasePackage;
    }

    @Override
    public Long call() throws Exception {
        System.out.println("In CALLABLE");
        traverse();
        return linesOfCode;
    }

    private void traverse() throws IOException {
        Path toPackage = Paths.get(mPathToBasePackage);
        traverse(toPackage);
    }

    private void traverse(Path path) throws IOException {
        if (!Files.isDirectory(path)) {
            System.out.println(path + " with lines " + Files.lines(path).count());
            linesOfCode += Files.lines(path).count();
            return;
        }

        List<Path> children = Files.list(path.toAbsolutePath()).collect(Collectors.toList());
        if (children.isEmpty()) {
            return;
        }

        for(Path child : children) {
            traverse(child);
        }
    }
}
