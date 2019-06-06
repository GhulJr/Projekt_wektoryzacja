# Automatyczna wektoryzacja kodu -analiza ograniczeń na przykładzie kompilatora gcc
## Asemblacja
W folderze Asemblacja znajdują się wszystkie kody konwertowane do assembly. W celu wykonania konwersji należy uruchomić skrypt run.sh (./run.sh).
W przypadku braku zezwolenia na wykonanie skryptu należy nadać takie prawa komendą *chmod u+x run.sh*.
W wyniku otrzymujemy pliki z rozszerzeniem .s o tej samej nazwie, co pliki cpp.
By uzyskać kod asemblera wykorzystaliśmy następującą komendę:

*g++ -S plik.cpp  -O3 -march=bdver2 -ffast-math -m32 -fno-exceptions -fno-rtti -fno-asynchronous-unwind-tables*

Gdzie:
- *-S* - konwertuje plik do asemblera
- *-O3* - uruchamia optymalizację (w naszym przypadku pozwala działać automatycznej wektoryzacji)
- *-ffast-math* - umożliwia wektoryzację liczb zmiennoprzecinkowych
- *-m32* - umożliwia wykorzystanie 32-bitowych rejestrów
- *-march=bdver2* - wykorzytstujemy optymalizację architektury procesorów rodzine Piledriver
- *-fno-exceptions -fno-rtti -fno-asynchronous-unwind-tables* - są użyte, by w wygenerowanym kodzie nie wyświetlać dyrektyw aseblera zawartych w ciele naszej funkcji

## Wektoryzacja
W folderze Wektoryzacja znadjudją się wszytkie programy, dla których sprawdzamy komunikaty na temat automatycznej wektoryzacji.
Podobnie jak w przypadku asemblacji w celu otrzymania komunikatów należy uruchomić skrypt run.sh. 
W wyniku otrzymujemy pliki txt wraz z informacjami na temat wektoryzacji (jeżeli zaszła) oraz ewentualnymi błędami.
By uzyskać kod komunikaty wykorzystaliśmy następującą komendę:

*g++ -fopt-info-vec-optimized/missed &>plik.txt -O3 -ffast-math -march=bdver2 plik.cpp*

Gdzie oprócz wcześniej opisanych poleceń wykorzystaliśmy: 
- *-fopt-info-vec* wyświetla informacje na temat wektoryzacji, wykorzystujemy flagę *-optimized* by wyświetlić informacje na temat powodzenia wektoryzacji oraz *-missed* by sprawdzić potencjalne błędy
- w przypadku wykorzystanie biblioteki STL skorzystaliśmy z flagi *-std=c++11* umożliwiającej wykorzystanie standardu języka C++ w wersji 11
