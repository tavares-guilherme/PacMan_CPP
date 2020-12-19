#ifndef __MAP
#define __MAP

#include <stdlib.h>
#include <cstring>
#include <stdio.h>
#include <vector>
#include "raylib-cpp.hpp"
#include "pacman.hpp"
#include "enemy.hpp"
#include <thread>
#include <mutex>
using namespace std;

class Pacman;


#define WALL        '='
#define POINT       '.'
#define PACMAN      'P'
#define REDENEMY    'R'
#define YELLOWENEMY 'Y'
#define EMPTY       ' '

/*
 * Classe que representa o mapa e seus atributos.
 */
class Map {
    private:
        int scale = 20;
        int frame = 20;
        int width;
        int height;

        int maxScore = 0;
        int currScore = 0;
        bool gameOver = false;

        thread movementThread;
        thread pacmanEnemyHandlerThread;


    public:
        char **board; /*!- Matriz que armazena o que há em cada espaço do jogo. Será uma região Crítica -!*/ 

        Map(FILE* mapFile, Pacman* pacman, Enemy* red, Enemy* yellow); 
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
        bool getGameOver();

        void computeScore(Pacman* pacman, Enemy* redEnemy, Enemy* yellowEnemy);

        void initThreads(Pacman* pacman, Enemy* redEnemy, Enemy* yellowEnemy);
        void destroyThreads();

        void endGame();
};


#endif
