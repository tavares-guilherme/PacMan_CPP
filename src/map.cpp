#include <stdlib.h>
#include <cstring>
#include <stdio.h>
#include "map.hpp"

#define WALL   1
#define POINT  2
#define PACMAN 3
#define ENEMY  4

Map::Map(FILE* mapFile) {
    if (mapFile != NULL) {
            

        // Allocate memory for map
        int** map = new int*[11];

        for (int i = 0; i < 11; i++) {
            map[i] = new int[20];
            memset(map[i], 0, sizeof(map[i]));
        }

        // Load map from file
        int i = 0, j = 0;

        while (!feof(mapFile)) {
            char currentChar;
            currentChar = getc(mapFile);

            if (currentChar == '\n') {
                i++;

                continue;
            } else if (currentChar == '=') {
                // Collision wall
                map[i][j] = WALL;
            } else if (currentChar == '.') {
                // Point
                map[i][j] = POINT;
            } else if (currentChar == 'P') {
                // Pacman Spawn
                map[i][j] = PACMAN;
            } else if (currentChar == 'E') {
                // Enemy spawn
                map[i][j] = ENEMY;
            }

            j++;
        }

        board = map;
    }else board = NULL;
}