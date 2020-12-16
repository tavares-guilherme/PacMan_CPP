#ifndef __MAP
#define __MAP

#include <stdlib.h>
#include <cstring>
#include <stdio.h>
#include <vector>
#include "raylib-cpp.hpp"
#include "pacman.hpp"
using namespace std;

class Pacman;

#define WALL   '='
#define POINT  '.'
#define PACMAN 'P'
#define ENEMY  'C'

/*
 * Classe que representa o mapa e seus atributos.
 */
class Map {
    private:
        int scale = 20;
        int frame = 20;
        int width;
        int height;

    public:
        char **board; /*!- Matriz que armazena o que há em cada espaço do jogo. Será uma região Crítica -!*/ 

        Map(FILE* mapFile, Pacman* pacman); 
        void  ResetMap();
        bool isWall(int x, int y);

        void load();
        void unload();

        void draw();

        int getWidth();
        int getHeight();
        int getWindowWidth();
        int getWindowHeight();
        int getFrame();
        int getScale();
};


#endif
