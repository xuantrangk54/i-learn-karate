package com.ilearnkarate;

import com.intuit.karate.junit5.Karate;

public class MockServerTest {
    @Karate.Test
    Karate testMock() {
        return Karate.run("classpath:mock/user-mock.feature")
                .systemProperty("karate.env", "mock");
    }
}
