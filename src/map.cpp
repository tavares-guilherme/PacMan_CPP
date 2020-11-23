#include <stdlib.h>
#include <cstring>
#include <stdio.h>
#include "map.hpp"

Map loadMap(FILE* mapFile) {
    if (mapFile == NULL)
        return NULL;

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
            map[i][j] = 1;
        } else if (currentChar == '.') {
            // Point
        } else if (currentChar == 'P') {
            // Pacman Spawn
        } else if (currentChar == 'E') {
            // Enemy spawn
        }

        j++;
    }


    return NULL;
}