#!/usr/bin/env python
# -*- coding: utf-8 -*-
import os


def pedirNumeroEntero():
 
    correcto=False
    num=0
    while(not correcto):
        try:
            num = int(input("Elige una opcion: "))
            correcto=True
        except ValueError:
            print('Error, introduce una opcion correcta')
     
    return num
 
salir = False
opcion = 0
 
while not salir:
 
    print ("1. Hacer Examen")
    print ("2. Nuevo test")
    print ("3. Salir")


 
    opcion = pedirNumeroEntero()
 
    if opcion == 1:
        print ("Opcion 1")
        input()
    elif opcion == 2:
        print ("Opcion 2")
    elif opcion == 3:
        salir = True
    else:
        print ("Introduce un numero entre 1 y 2")
 
print ("Saliendo del menu")
    
