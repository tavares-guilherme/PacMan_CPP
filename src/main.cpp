#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include "raylib-cpp.hpp"
#include "map.hpp"
#include "pacman.hpp"
#include "cstring"

using namespace std;

#define DEBUG 1

int main() {
    // 
    Pacman pacman(0,0);

    // To-do: Improve Map Selection
    FILE* mapFile = fopen("../src/resources/map.txt", "r");
    Map map(mapFile, &pacman);

    if (mapFile == NULL)
        return 1;
    
    // 
    int screenWidth = map.getWindowWidth();
    int screenHeight = map.getWindowHeight();

    // 
    raylib::Window w(screenWidth, screenHeight, "raylib [core] example - basic window");
    
    // Load
    pacman.load();

    // Config
    SetTargetFPS(60);

    while (!w.ShouldClose())    // Detect window close button or ESC key
    {
       
        BeginDrawing();

        ClearBackground(BLACK);

        // To-do: Detect movement key
        pacman.getKeyboardMovement();
        pacman.doMovement(&map);

        // To-do: invoke it as a thread
        map.draw();
        pacman.draw(map.getFrame(), map.getScale());

        EndDrawing();
       
    }

    // Unload
    pacman.unload();

    fclose(mapFile);

    return 0;
}
