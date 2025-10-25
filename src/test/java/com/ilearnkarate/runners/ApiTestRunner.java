package com.ilearn.karate.runners;

import com.intuit.karate.junit5.Karate;

public class ApiTestRunner {
    @Karate.Test
    Karate testAll() {
        return Karate.run("classpath:features").relativeTo(getClass());
    }
}
