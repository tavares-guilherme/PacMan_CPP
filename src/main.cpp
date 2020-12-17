#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include "raylib-cpp.hpp"
#include "map.hpp"
#include "pacman.hpp"
#include "enemy.hpp"
#include "cstring"

using namespace std;

#define DEBUG 1

int main() {
    // 
    Pacman pacman(0,0);
    Enemy redEnemy(RED_ENEMY);
    Enemy yellowEnemy(YELLOW_ENEMY);

    // To-do: Improve Map Selection
    FILE* mapFile = fopen("../src/resources/map.txt", "r");
    Map map(mapFile, &pacman, &redEnemy, &yellowEnemy);

    if (mapFile == NULL)
        return 1;
    
    // 
    int screenWidth = map.getWindowWidth();
    int screenHeight = map.getWindowHeight();

    // 
    raylib::Window w(screenWidth, screenHeight, "raylib [core] example - basic window");
    
    // Load
    pacman.load();
    redEnemy.load();
    yellowEnemy.load();

    // Config
    SetTargetFPS(60);

    while (!w.ShouldClose())    // Detect window close button or ESC key
    {
       
        BeginDrawing();

        ClearBackground(BLACK);

        // To-do: Detect movement key
       
        pacman.getKeyboardMovement();
        pacman.doMovement(&map);
        redEnemy.doMovement(&map);
        yellowEnemy.doMovement(&map);

        // To-do: invoke it as a thread
        map.draw();
        pacman.draw(map.getFrame(), map.getScale());
        redEnemy.draw(map.getFrame(), map.getScale());
        yellowEnemy.draw(map.getFrame(), map.getScale());

        EndDrawing();
       
    }

    // Unload
    pacman.unload();
    redEnemy.unload();
    yellowEnemy.unload();

    fclose(mapFile);

    return 0;
}
