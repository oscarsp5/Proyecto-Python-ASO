#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys 
import MySQLdb
import random


conn=MySQLdb.connect(host='localhost',user='usuario',passwd='usuario',db='basespython')
cursor=conn.cursor()

nombre = input("Indica tu nombre: ")

def numero():
 
    correcto=False
    num=0
    while(not correcto):
        try:
            num = int(input("Elige una opción: "))
            correcto=True
        except ValueError:
            print('Error, introduce un numero entero')
     
    return num


#Examenes Temas
#######################################################   
 
# Examen Coches  
def temacoches():
	os.system("clear")
	print ("Examen Coches")
	cont = 0;
	for i in range(1,10):
		temacoche = "SELECT * FROM coches WHERE idcoches = %(id)s"
		cursor.execute(temacoche, { 'id': i })
		for pregcoche in cursor.fetchall():
			print (pregcoche[1])
		print ("######################################################################")
		respuesta = "SELECT * FROM respuesta_coches WHERE idrespuesta_coches2 = %(id)s"
		cursor.execute(respuesta, { 'id': i })
		for respuestas in cursor.fetchall():
			print (respuestas[3],respuestas[1],sep=".")
		
		#Solucion
		
		solucion = input("Solucion: ")
		correcta = "SELECT * FROM respuesta_coches WHERE idrespuesta_coches2 = %(id)s and letra_coche = %(sol)s"
		cursor.execute(correcta, { 'id': i, 'sol': solucion })
		letracorrecta = cursor.fetchone()
		print (letracorrecta[4])
		
		
		if letracorrecta[4] == "correcta":
			cont = cont + 1	
	
	print ("Su nota total es,",cont )
	
	#Volvemos al menu
		
	input("Pulsa una tecla para volver")  
	
# Examen futbol   
def temafutbol():
	os.system("clear")
	print ("Examen Futbol")
	cont = 0;
	for i in range(1,10):
		temafut = "SELECT * FROM futbol WHERE idfutbol = %(id)s"
		cursor.execute(temafut, { 'id': i })
		for pregfut in cursor.fetchall():
			print (pregfut[1])
		print ("#######################################################################")
		respuesta = "SELECT * FROM respuesta_futbol WHERE idrespuesta_futbol2 = %(id)s"
		cursor.execute(respuesta, { 'id': i })
		for respuestas in cursor.fetchall():
			print (respuestas[3],respuestas[1],sep=".")
		
		#Solucion
		
		solucion = input("Solucion: ")
		correcta = "SELECT * FROM respuesta_futbol WHERE idrespuesta_futbol2 = %(id)s and letra_futbol = %(sol)s"
		cursor.execute(correcta, { 'id': i, 'sol': solucion })
		letracorrecta = cursor.fetchone()
		print (letracorrecta[4])
		
		if letracorrecta[4] == "correcta":
			cont = cont + 1	
	
	print ("Su nota total es,",cont )
		
	#Volvemos al menu

	input("Pulsa una tecla para volver") 
	
# Examen Capitales 
def temacapitales():
	os.system("clear")
	print ("Examen Capitales")
	cont = 0;
	for i in range(1,10):
		temacapi = "SELECT * FROM capitales WHERE idcapitales = %(id)s"
		cursor.execute(temacapi, { 'id': i })
		for pregcapi in cursor.fetchall():
			print (pregcapi[1])
		print ("############################################################################")
		respuesta = "SELECT * FROM respuesta_capitales WHERE idrespuesta_capitales2 = %(id)s"
		cursor.execute(respuesta, { 'id': i })
		for respuestas in cursor.fetchall():
			print (respuestas[3],respuestas[1],sep=".")
		
		#Solucion
		
		solucion = input("Solucion: ")
		correcta = "SELECT * FROM respuesta_capitales WHERE idrespuesta_capitales2 = %(id)s and letra_capital = %(sol)s"
		cursor.execute(correcta, { 'id': i, 'sol': solucion })
		letracorrecta = cursor.fetchone()
		print (letracorrecta[4])

		if letracorrecta[4] == "correcta":
			cont = cont + 1	
	
	print ("Su nota total es,",cont )
		
	#Volvemos al menu
		
	input("Pulsa una tecla para volver")
	
# Examen Peliculas
def temapeliculas():
	os.system("clear")
	print ("Examen Peliculas")
	cont = 0;
	for i in range(1,10):
		temapeli = "SELECT * FROM peliculas WHERE idpeliculas = %(id)s"
		cursor.execute(temapeli, { 'id': i })
		for pregpeli in cursor.fetchall():
			print (pregpeli[1])
		print ("############################################################################")
		respuesta = "SELECT * FROM respuesta_peliculas WHERE idrespuesta_peliculas2 = %(id)s"
		cursor.execute(respuesta, { 'id': i })
		for respuestas in cursor.fetchall():
			print (respuestas[3],respuestas[1],sep=".")
	
	#Solucion
		
		solucion = input("Solucion: ")
		correcta = "SELECT * FROM respuesta_peliculas WHERE idrespuesta_peliculas2 = %(id)s and letra_pelicula = %(sol)s"
		cursor.execute(correcta, { 'id': i, 'sol': solucion })
		letracorrecta = cursor.fetchone()
		print (letracorrecta[4])
		
		if letracorrecta[4] == "correcta":
			cont = cont + 1	
	
	print ("Su nota total es,",cont )
	
	#Volvemos al menu
		
	input("Pulsa una tecla para volver")


salir = False
opcion = 0

while not salir:
	print ("1. Examen")
	print ("2. Crear test")
	print ("3. Salir")
	print ("")
	opcion = numero()
	if opcion == 1:
		print ("Elige el examen que quieres realizar:")
		print ("")
		print ("1. Coches")
		print ("2. Futbol")
		print ("3. Capitales")
		print ("4. Peliculas")
		print ("5. Salir")
		print ("")
		exatema = numero()
		if exatema == 1:
			print ("")
			print ("Examen para", nombre ,"sobre coches")
			print ("")
			temacoches()
		elif exatema == 2:
			print ("")
			print ("Examen para ", nombre ,"sobre futbol")
			print ("")
			temafutbol()
		elif exatema == 3:
			print ("")
			print ("Examen para ", nombre ,"sobre capitales")
			print ("")
			temacapitales()
		elif exatema == 4:
			print ("")
			print ("Examen para ", nombre ,"sobre peliculas")
			print ("")
			temapeliculas()
		elif exatema == 5:
			opcion == 1
		else: 
			print("Elige el tema correcto")
			print("Regresando al menu")

		
			
			
	elif opcion == 2:
		print ("Elige si crear un tema o añadir preguntas y respuestas a uno ya creado ")
		print("1. Crear tema examen")
		print("2. Añadir preguntas y respuestas a un tema de examen ya creado")
		print("3. Salir")
		opcion2 = numero()
		if opcion2 == 1:
			print("fddsf")
		if opcion2 == 2:
			print("dsfdfsf")
	elif opcion == 3:
		salir = True
	else:
		print ("Introduce un numero entre 1 y 3")
