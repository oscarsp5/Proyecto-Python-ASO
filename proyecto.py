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
		print ("######################################################################")
		
		if letracorrecta[4] == "correcta":
			cont = cont + 1	
	print ("Su nota total es,",cont )
	
	#Volvemos al menu
		
	input("Pulsa una tecla para volver")  
################################################################################################	
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
		print ("######################################################################")
		
		if letracorrecta[4] == "correcta":
			cont = cont + 1	
	
	print ("Su nota total es,",cont )
		
	#Volvemos al menu

	input("Pulsa una tecla para volver") 
################################################################################################		
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
		print ("######################################################################")
	
		if letracorrecta[4] == "correcta":
			cont = cont + 1	
	
	print ("Su nota total es,",cont )
		
	#Volvemos al menu
		
	input("Pulsa una tecla para volver")
################################################################################################		
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
		print ("######################################################################")
		if letracorrecta[4] == "correcta":
			cont = cont + 1	
	
	print ("Su nota total es,",cont )
	
	#Volvemos al menu
		
	input("Pulsa una tecla para volver")
################################################################################################	
#Creacion Tema
####################################################### 

def creaciontema():
	os.system("clear")
	print(" ")
	agregartema = input ("Escribe el nombre del tema a agregar: ")
	sentencia = ("CREATE TABLE basespython."+ agregartema +  "(id"+ agregartema + " INT NOT NULL AUTO_INCREMENT, p_"+ agregartema + " VARCHAR(200) NULL,PRIMARY KEY (id"+ agregartema +"));")
	cursor.execute(sentencia)
	
	sentenciapreg = ("CREATE TABLE basespython.respuesta_"+ agregartema +  "(respuesta_"+ agregartema + " INT NOT NULL AUTO_INCREMENT, respuesta_"+ agregartema +"col VARCHAR(200) NULL,idrespuesta_"+ agregartema +"2 INT, letra_"+ agregartema +" VARCHAR(45), solucion_" + agregartema +" VARCHAR(10) ,PRIMARY KEY (respuesta_"+ agregartema +"));") 
	cursor.execute(sentenciapreg)
	
	print (" ")
	
	print ("Tema creado correctamente")
	
	#Volvemos al menu
		
	input("Pulsa una tecla para volver")
################################################################################################	
#Agregar respuestas y preguntas
#######################################################

#Agregar respuestas y preguntas coches

def insertarcoche():

	print("")
	preguntemacoches=input("Que pregunta deseas agregar: ")
	print("")
	opcioncoches1=input("1. Escribe la opcion: ")
	print("")
	opcioncoches2=input("2. Escribe la opcion: ")
	print("")
	opcioncoches3=input("3. Escribe la opcion: ")
	print("")
	opcioncoches4=input("4. Escribe la opcion: ")
				
				
	querypregscoches="insert into coches (p_coches) values ('"+preguntemacoches+"')"
				
	cursor.execute(querypregscoches)
				
	queryselect="select count(*) from respuesta_coches"
	cursor.execute(queryselect)
	todo=cursor.fetchall()
	contador = int(todo[0][0])
	contador += 1
	queryrescoches1="insert into respuesta_coches (idrespuesta_coches,respuesta_cochescol) values (" + str(contador) + ",'"+ opcioncoches1 +"' )"
	contador += 1
	queryrescoches2="insert into respuesta_coches (idrespuesta_coches,respuesta_cochescol) values (" + str(contador) + ",'"+ opcioncoches2 +"' )"
	contador += 1
	queryrescoches3="insert into respuesta_coches (idrespuesta_coches,respuesta_cochescol) values (" + str(contador) + ",'"+ opcioncoches3 +"' )"
	contador += 1
	queryrescoches4="insert into respuesta_coches (idrespuesta_coches,respuesta_cochescol) values (" + str(contador) + ",'"+ opcioncoches4 +"' )"
	cursor.execute(queryrescoches1)
	cursor.execute(queryrescoches2)
	cursor.execute(queryrescoches3)
	cursor.execute(queryrescoches4)
	conn.commit()
	print(" ")
	print("Preguntas y respuestas agregadas correctamente")
	
	#Volvemos al menu
		
	input("Pulsa una tecla para volver")

################################################################################################	
#Agregar respuestas y preguntas futbol

def insertarfutbol():

	print("")
	preguntemafutbol=input("Que pregunta deseas agregar: ")
	print("")
	opcionfutbol1=input("1. Escribe la opcion: ")
	print("")
	opcionfutbol2=input("2. Escribe la opcion: ")
	print("")
	opcionfutbol3=input("3. Escribe la opcion: ")
	print("")
	opcionfutbol4=input("4. Escribe la opcion: ")
				
				
	querypregsfutbol="insert into futbol (p_futbol) values ('"+preguntemafutbol+"')"
				
	cursor.execute(querypregsfutbol)
				
	queryselect="select count(*) from respuesta_futbol"
	cursor.execute(queryselect)
	todo=cursor.fetchall()
	contador = int(todo[0][0])
	contador += 1
	queryresfutbol1="insert into respuesta_futbol (idrespuesta_futbol,respuesta_futbolcol) values (" + str(contador) + ",'"+ opcionfutbol1 +"' )"
	contador += 1
	queryresfutbol2="insert into respuesta_futbol (idrespuesta_futbol,respuesta_futbolcol) values (" + str(contador) + ",'"+ opcionfutbol2 +"' )"
	contador += 1
	queryresfutbol3="insert into respuesta_futbol (idrespuesta_futbol,respuesta_futbolcol) values (" + str(contador) + ",'"+ opcionfutbol3 +"' )"
	contador += 1
	queryresfutbol4="insert into respuesta_futbol (idrespuesta_futbol,respuesta_futbolcol) values (" + str(contador) + ",'"+ opcionfutbol4 +"' )"
	cursor.execute(queryresfutbol1)
	cursor.execute(queryresfutbol2)
	cursor.execute(queryresfutbol3)
	cursor.execute(queryresfutbol4)
	conn.commit()
	
	print(" ")
	print("Preguntas y respuestas agregadas correctamente")


	#Volvemos al menu
		
	input("Pulsa una tecla para volver")
################################################################################################	
#Agregar respuestas y preguntas capitales

def insertarcapital():

	print("")
	preguntemacapital=input("Que pregunta deseas agregar: ")
	print("")
	opcioncapital1=input("1. Escribe la opcion: ")
	print("")
	opcioncapital2=input("2. Escribe la opcion: ")
	print("")
	opcioncapital3=input("3. Escribe la opcion: ")
	print("")
	opcioncapital4=input("4. Escribe la opcion: ")
				
				
	querypregscapital="insert into capitales (p_capitales) values ('"+preguntemacapital+"')"
				
	cursor.execute(querypregscapital)
				
	queryselect="select count(*) from respuesta_capitales"
	cursor.execute(queryselect)
	todo=cursor.fetchall()
	contador = int(todo[0][0])
	contador += 1
	queryrescapital1="insert into respuesta_capitales (respuesta_capitales,respuesta_capitalescol) values (" + str(contador) + ",'"+ opcioncapital1 +"' )"
	contador += 1
	queryrescapital2="insert into respuesta_capitales (respuesta_capitales,respuesta_capitalescol) values (" + str(contador) + ",'"+ opcioncapital2 +"' )"
	contador += 1
	queryrescapital3="insert into respuesta_capitales (respuesta_capitales,respuesta_capitalescol) values (" + str(contador) + ",'"+ opcioncapital3 +"' )"
	contador += 1
	queryrescapital4="insert into respuesta_capitales (respuesta_capitales,respuesta_capitalescol) values (" + str(contador) + ",'"+ opcioncapital4 +"' )"
	cursor.execute(queryrescapital1)
	cursor.execute(queryrescapital2)
	cursor.execute(queryrescapital3)
	cursor.execute(queryrescapital4)
	conn.commit()
	
	print(" ")
	print("Preguntas y respuestas agregadas correctamente")


	#Volvemos al menu
		
	input("Pulsa una tecla para volver")
################################################################################################	
#Agregar respuestas y preguntas peliculas

def insertarpelicula():

	print("")
	preguntemapelicula=input("Que pregunta deseas agregar: ")
	print("")
	opcionpelicula1=input("1. Escribe la opcion: ")
	print("")
	opcionpelicula2=input("2. Escribe la opcion: ")
	print("")
	opcionpelicula3=input("3. Escribe la opcion: ")
	print("")
	opcionpelicula4=input("4. Escribe la opcion: ")
				
				
	querypregspelicula="insert into peliculas (p_peliculas) values ('"+preguntemapelicula+"')"
				
	cursor.execute(querypregspelicula)
				
	queryselect="select count(*) from respuesta_peliculas"
	cursor.execute(queryselect)
	todo=cursor.fetchall()
	contador = int(todo[0][0])
	contador += 1
	queryrespelicula1="insert into respuesta_peliculas (idrespuesta_peliculas,respuesta_peliculascol) values (" + str(contador) + ",'"+ opcionpelicula1 +"' )"
	contador += 1
	queryrespelicula2="insert into respuesta_peliculas (idrespuesta_peliculas,respuesta_peliculascol) values (" + str(contador) + ",'"+ opcionpelicula2 +"' )"
	contador += 1
	queryrespelicula3="insert into respuesta_peliculas (idrespuesta_peliculas,respuesta_peliculascol) values (" + str(contador) + ",'"+ opcionpelicula3 +"' )"
	contador += 1
	queryrespelicula4="insert into respuesta_peliculas (idrespuesta_peliculas,respuesta_peliculascol) values (" + str(contador) + ",'"+ opcionpelicula4 +"' )"
	cursor.execute(queryrespelicula1)
	cursor.execute(queryrespelicula2)
	cursor.execute(queryrespelicula3)
	cursor.execute(queryrespelicula4)
	conn.commit()
	
	print(" ")
	print("Preguntas y respuestas agregadas correctamente")


	#Volvemos al menu
		
	input("Pulsa una tecla para volver")
############################################################################################
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
			print("")
			creaciontema()
			
		if opcion2 == 2:
			
			print("")
			print ("¿Que tema seleccionas?")
			print("")
			print ("1. Coches")
			print ("2. Futbol")
			print ("3. Capitales")
			print ("4. Peliculas")
			print ("5. Salir")
			añadirpreguntas = numero()
			
			if añadirpreguntas == 1:
				insertarcoche()
			elif añadirpreguntas == 2:
				insertarfutbol()
			elif añadirpreguntas == 3:
				insertarcapital()
			elif añadirpreguntas == 4:
				insertarpelicula()

	elif opcion == 3:
		salir = True
	else:
		print ("Introduce un numero entre 1 y 3")
