#!/bin/bash

g++ -S 3.3_prosty_przyklad.cpp  -O3 -march=bdver2 -ffast-math -m32 -fno-exceptions -fno-rtti -fno-asynchronous-unwind-tables

g++ -S 3.4_funkcje_systemowe.cpp  -O3 -march=bdver2 -ffast-math -m32 -fno-exceptions -fno-rtti -fno-asynchronous-unwind-tables

g++ -S 3.5_zmienne_lokalne.cpp  -O3 -march=bdver2 -ffast-math -m32 -fno-exceptions -fno-rtti -fno-asynchronous-unwind-tables

g++ -S 3.5_zmienne_lokalne_wektoryzacja.cpp  -O3 -march=bdver2 -ffast-math -m32 -fno-exceptions -fno-rtti -fno-asynchronous-unwind-tables

g++ -S 4.1_warunkowe_przerwanie_petli.cpp  -O3 -march=bdver2 -ffast-math -m32 -fno-exceptions -fno-rtti -fno-asynchronous-unwind-tables

g++ -S 4.2_operacje_warunkowe.cpp  -O3 -march=bdver2 -ffast-math -m32 -fno-exceptions -fno-rtti -fno-asynchronous-unwind-tables

g++ -S 4.2_operacje_warunkowe_wektoryzacja.cpp  -O3 -march=bdver2 -ffast-math -m32 -fno-exceptions -fno-rtti -fno-asynchronous-unwind-tables

g++ -S 4.3_instrukcja_wyboru_switch.cpp  -O3 -march=bdver2 -ffast-math -m32 -fno-exceptions -fno-rtti -fno-asynchronous-unwind-tables

g++ -S 5.1_nieznana_dlugosc_petli.cpp  -O3 -march=bdver2 -ffast-math -m32 -fno-exceptions -fno-rtti -fno-asynchronous-unwind-tables

g++ -S 5.2_petla_wsteczna_wektoryzacja.cpp  -O3 -march=bdver2 -ffast-math -m32 -fno-exceptions -fno-rtti -fno-asynchronous-unwind-tables

g++ -S 5.2_petla_wsteczna.cpp  -O3 -march=bdver2 -ffast-math -m32 -fno-exceptions -fno-rtti -fno-asynchronous-unwind-tables

g++ -S 5.3_iteracja_wsteczna.cpp  -O3 -march=bdver2 -ffast-math -m32 -fno-exceptions -fno-rtti -fno-asynchronous-unwind-tables

