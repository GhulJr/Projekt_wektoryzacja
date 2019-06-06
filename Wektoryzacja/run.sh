#!/bin/bash

#3.3 Pierwszy przyklad
g++ -fopt-info-vec-optimized &>3.3_prosty_przyklad.txt -O3 -ffast-math -march=bdver2 3.3_prosty_przyklad.cpp
g++ -fopt-info-vec-missed &>>3.3_prosty_przyklad.txt -O3 -ffast-math -march=bdver2 3.3_prosty_przyklad.cpp

#3.4 Funkcje systemowe
g++ -fopt-info-vec-optimized &>3.4_funkcje_systemowe.txt -O3 -ffast-math -march=bdver2 3.4_funkcje_systemowe.cpp
g++ -fopt-info-vec-missed &>>3.4_funkcje_systemowe.txt -O3 -ffast-math -march=bdver2 3.4_funkcje_systemowe.cpp

#3.5 Zmienne lokalne
g++ -fopt-info-vec-optimized &>3.5_zmienne_lokalne.txt -O3 -ffast-math -march=bdver2 3.5_zmienne_lokalne.cpp
g++ -fopt-info-vec-missed &>>3.5_zmienne_lokalne.txt -O3 -ffast-math -march=bdver2 3.5_zmienne_lokalne.cpp

#3.5 Zmienne lokalne wektoryzacja
g++ -fopt-info-vec-optimized &>3.5_zmienne_lokalne_wektoryzacja.txt -O3 -ffast-math -march=bdver2 3.5_zmienne_lokalne_wektoryzacja.cpp
g++ -fopt-info-vec-missed &>>3.5_zmienne_lokalne_wektoryzacja.txt -O3 -ffast-math -march=bdver2 3.5_zmienne_lokalne_wektoryzacja.cpp

#4.1 Warunkowe przerwanie petli
g++ -fopt-info-vec-optimized &>4.1_warunkowe_przerwanie_petli.txt -O3 -ffast-math -march=bdver2 4.1_warunkowe_przerwanie_petli.cpp
g++ -fopt-info-vec-missed &>>4.1_warunkowe_przerwanie_petli.txt -O3 -ffast-math -march=bdver2 4.1_warunkowe_przerwanie_petli.cpp

#4.2 Operacje warunkowe
g++ -fopt-info-vec-optimized &>4.2_operacje_warunkowe.txt -O3 -ffast-math -march=bdver2 4.2_operacje_warunkowe.cpp
g++ -fopt-info-vec-missed &>>4.2_operacje_warunkowe.txt -O3 -ffast-math -march=bdver2 4.2_operacje_warunkowe.cpp

#4.2 Operacje warunkowe wektoryzacja
g++ -fopt-info-vec-optimized &>4.2_operacje_warunkowe_wektoryzacja.txt -O3 -ffast-math -march=bdver2 4.2_operacje_warunkowe_wektoryzacja.cpp
g++ -fopt-info-vec-missed &>>4.2_operacje_warunkowe_wektoryzacja.txt -O3 -ffast-math -march=bdver2 4.2_operacje_warunkowe_wektoryzacja.cpp

#4.3 Instrukcja wyboru switch
g++ -fopt-info-vec-optimized &>4.3_instrukcja_wyboru_switch.txt -O3 -ffast-math -march=bdver2 4.3_instrukcja_wyboru_switch.cpp
g++ -fopt-info-vec-missed &>>4.3_instrukcja_wyboru_switch.txt -O3 -ffast-math -march=bdver2 4.3_instrukcja_wyboru_switch.cpp

#5.1 Nieznana dlugosc petli
g++ -fopt-info-vec-optimized &>5.1_nieznana_dlugosc_petli.txt -O3 -ffast-math -march=bdver2 5.1_nieznana_dlugosc_petli.cpp
g++ -fopt-info-vec-missed &>>5.1_nieznana_dlugosc_petli.txt -O3 -ffast-math -march=bdver2 5.1_nieznana_dlugosc_petli.cpp

#5.2 Pętla wsteczna
g++ -fopt-info-vec-optimized &>5.2_petla_wsteczna.txt -O3 -ffast-math -march=bdver2 5.2_petla_wsteczna.cpp
g++ -fopt-info-vec-missed &>>5.2_petla_wsteczna.txt -O3 -ffast-math -march=bdver2 5.2_petla_wsteczna.cpp

#5.2 Pętla wsteczna wektoryzacja
g++ -fopt-info-vec-optimized &>5.2_petla_wsteczna_wektoryzacja.txt -O3 -ffast-math -march=bdver2 5.2_petla_wsteczna_wektoryzacja.cpp
g++ -fopt-info-vec-missed &>>5.2_petla_wsteczna_wektoryzacja.txt -O3 -ffast-math -march=bdver2 5.2_petla_wsteczna_wektoryzacja.cpp

#5.3 Iteracja wsteczna
g++ -fopt-info-vec-optimized &>5.3_iteracja_wsteczna.txt -O3 -ffast-math -march=bdver2 5.3_iteracja_wsteczna.cpp
g++ -fopt-info-vec-missed &>>5.3_iteracja_wsteczna.txt -O3 -ffast-math -march=bdver2 5.3_iteracja_wsteczna.cpp

#6.1 Najmniejszy element
g++ -fopt-info-vec-optimized &>6.1_min_element.txt -O3 -ffast-math -march=bdver2 6.1_min_element.cpp
g++ -fopt-info-vec-missed &>>6.1_min_element.txt -O3 -ffast-math -march=bdver2 6.1_min_element.cpp

#6.2 Najwiekszy element
g++ -fopt-info-vec-optimized &>6.2_max_element.txt -O3 -ffast-math -march=bdver2 6.2_max_element.cpp
g++ -fopt-info-vec-missed &>>6.2_max_element.txt -O3 -ffast-math -march=bdver2 6.2_max_element.cpp

#6.3 Sortowanie przez scalanie
g++ -fopt-info-vec-optimized &>6.3_sort_scalanie.txt -O3 -ffast-math -march=bdver2 6.3_sort_scalanie.cpp
g++ -fopt-info-vec-missed &>>6.3_sort_scalanie.txt -O3 -ffast-math -march=bdver2 6.3_sort_scalanie.cpp

#6.4 Sortowanie przez wstawianie
g++ -fopt-info-vec-optimized &>6.4_sort_wstawianie.txt -O3 -ffast-math -march=bdver2 6.4_sort_wstawianie.cpp
g++ -fopt-info-vec-missed &>>6.4_sort_wstawianie.txt -O3 -ffast-math -march=bdver2 6.4_sort_wstawianie.cpp

#6.5 Sortowanie babelkowe
g++ -fopt-info-vec-optimized &>6.5_sort_babelkowe.txt -O3 -ffast-math -march=bdver2 6.5_sort_babelkowe.cpp
g++ -fopt-info-vec-missed &>>6.5_sort_babelkowe.txt -O3 -ffast-math -march=bdver2 6.5_sort_babelkowe.cpp

#6.6 Sortowanie szybkie
g++ -fopt-info-vec-optimized &>6.6_sort_quick.txt -O3 -ffast-math -march=bdver2 6.6_sort_quick.cpp
g++ -fopt-info-vec-missed &>>6.6_sort_quick.txt -O3 -ffast-math -march=bdver2 6.6_sort_quick.cpp

#7.1 Najmniejszy element (STL)
g++ -fopt-info-vec-optimized &>7.1_stl_min_element.txt -O3 -ffast-math -march=bdver2 -std=c++11 7.1_stl_min_element.cpp
g++ -fopt-info-vec-missed &>>7.1_stl_min_element.txt -O3 -ffast-math -march=bdver2 -std=c++11 7.1_stl_min_element.cpp

#7.2 Najwiekszy element (STL)
g++ -fopt-info-vec-optimized &>7.2_stl_max_element.txt -O3 -ffast-math -march=bdver2 -std=c++11 7.2_stl_max_element.cpp
g++ -fopt-info-vec-missed &>>7.2_stl_max_element.txt -O3 -ffast-math -march=bdver2 -std=c++11 7.2_stl_max_element.cpp

#7.3 Sortowanie tablicy przy uzyciu domyslnego operatora (STL)
g++ -fopt-info-vec-optimized &>7.3_stl_sort_1.txt -O3 -ffast-math -march=bdver2 -std=c++11 7.3_stl_sort_1.cpp
g++ -fopt-info-vec-missed &>>7.3_stl_sort_1.txt -O3 -ffast-math -march=bdver2 -std=c++11 7.3_stl_sort_1.cpp

#7.3 Sortowanie tablicy przy uzyciu obiektu funkcji porównywania (STL)
g++ -fopt-info-vec-optimized &>7.3_stl_sort_2.txt -O3 -ffast-math -march=bdver2 -std=c++11 7.3_stl_sort_2.cpp
g++ -fopt-info-vec-missed &>>7.3_stl_sort_2.txt -O3 -ffast-math -march=bdver2 -std=c++11 7.3_stl_sort_2.cpp

#7.3 Sortowanie tablicy przy uzyciu niestandardowego obiektu funkcji (STL)
g++ -fopt-info-vec-optimized &>7.3_stl_sort_3.txt -O3 -ffast-math -march=bdver2 -std=c++11 7.3_stl_sort_3.cpp
g++ -fopt-info-vec-missed &>>7.3_stl_sort_3.txt -O3 -ffast-math -march=bdver2 -std=c++11 7.3_stl_sort_3.cpp

#7.3 Sortowanie tablicy przy uzyciu operatora lambda (STL)
g++ -fopt-info-vec-optimized &>7.3_stl_sort_4.txt -O3 -ffast-math -march=bdver2 -std=c++11 7.3_stl_sort_4.cpp
g++ -fopt-info-vec-missed &>>7.3_stl_sort_4.txt -O3 -ffast-math -march=bdver2 -std=c++11 7.3_stl_sort_4.cpp

#7.4 Operacje na liscie dwukierunkowej (STL)
g++ -fopt-info-vec-optimized &>7.4_stl_list_operations.txt -O3 -ffast-math -march=bdver2 -std=c++11 7.4_stl_list_operations.cpp
g++ -fopt-info-vec-missed &>>7.4_stl_list_operations.txt -O3 -ffast-math -march=bdver2 -std=c++11 7.4_stl_list_operations.cpp
