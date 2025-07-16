package com.tif.xss;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

//Definimos que esta anotacion es para tiempo de ejecuci�n
@Retention(RetentionPolicy.RUNTIME)
//definimos que el target va a ser un atributo
@Target(ElementType.FIELD)
public @interface EncodeHTMLText {

}
