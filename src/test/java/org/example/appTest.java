package org.example;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class appTest {

    @Test
    void testAdd() {
        assertEquals(4, app.add(2, 3));
    }
}

