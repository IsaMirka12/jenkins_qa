package com.miempresa;

import org.junit.Test;
import static org.junit.Assert.*;

public class AppTest {

    @Test
    public void SumaTest() {
        App app = new App();                    // ✅ punto y coma
        int result = app.sumar(2, 3);          // ✅ punto y coma
        assertEquals(5, result);               // ✅ método correcto
    }

}
