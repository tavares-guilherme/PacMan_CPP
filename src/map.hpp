#ifndef __MAP
#define __MAP

#include <stdlib.h>
#include <cstring>
#include <stdio.h>
#include "map.hpp"
#include "raylib-cpp.hpp"
#include "pacman.hpp"

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

        void load();
        void unload();

        void  DrawMap(Pacman *p);

        int getWidth();
        int getHeight();
        int getWindowWidth();
        int getWindowHeight();
};

Map::Map(FILE* mapFile, Pacman* pacman) {
    
    if (mapFile != NULL) {
        
        // Load header
        char aux1[3], aux2[3];
        fgets(aux1, 3, mapFile); fgetc(mapFile);
        fgets(aux2, 3, mapFile); fgetc(mapFile);
        this->width = atoi(aux1);
        this->height = atoi(aux2);

        for(int i = 0; i < 2; i++) {
            printf("%c", aux1[i]);
        }
        printf("\n");
        for(int i = 0; i < 2; i++) {
            printf("%c", aux2[i]);
        }

        
        // Allocate memory for map
        board = new char*[this->height];

        for (int i = 0; i < this->height; i++) {
            board[i] = new char[this->width];
            memset(board[i], 0, sizeof(board[i]));
        }

        // Load map from file

        int i = 0, j = 0;
        while (!feof(mapFile)) {
            char currentChar;
            currentChar = getc(mapFile);
            
            if (currentChar == '\n') {
                i++;
                j = 0; 
                continue;
            } else if (currentChar == WALL) {
                // Collision wall
                board[i][j] = WALL;
            } else if (currentChar == POINT) {
                // Point
                board[i][j] = POINT;
            } else if (currentChar == PACMAN) {
                // Pacman Spawn
                board[i][j] = PACMAN;

                // Send x and y to pacman class
            } else if (currentChar == ENEMY) {
                // Enemy spawn
                board[i][j] = ENEMY;
            }
            j++;
        }
        
    }else board = NULL;
}


// To-do: Invoke it as a thread
void Map::DrawMap(Pacman *p) {

    char currentChar;

    for(int i = 0; i < this->height; i++) {
        for(int j = 0; j < this->width; j++) {
            currentChar = this->board[i][j];
            switch(currentChar) {
                case (WALL):
                    DrawRectangle(this->frame + this->scale * j,     // PosX
                                  this->frame + this->scale * i,    // PosY
                                  this->scale, this->scale, WHITE); // Dimentions and color
                    break;
                case (POINT):
                    DrawCircle( (this->frame + this->scale * j) + this->scale/2, // Center PosX
                                (this->frame + this->scale * i) + this->scale/2, // Center PosY
                                 2, WHITE);                        // Radius and Color 
                    break;
                case (PACMAN):
                    /*p->setX(j); p->setY(i);
                    DrawTexture(p->getTexture(), this->frame + this->scale *j, this->frame + this->scale * i, WHITE);*/
                    break;
            }
        }
    }
}

int Map::getWidth()  { return this->width; }
int Map::getHeight() { return this->height; }

int Map::getWindowWidth()  { return(this->width  * this->scale + 2*this->frame); }
int Map::getWindowHeight() { return(this->height * this->scale + 2*this->frame); }

int Map::isWall(int x, int y) {
    // Check if the pixel on that position is a wall
}


#endif
