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
    
    // To-do: Improve Map Selection
    FILE* fMap = fopen("../src/resources/map.txt", "r");
    if(fMap == NULL) return 1;
    Map map(fMap);

    int screenWidth = map.getWindowWidth();
    int screenHeight = map.getWindowHeight();
    Pacman pacman(0,0);
    
    raylib::Color textColor(LIGHTGRAY);
    raylib::Window w(screenWidth, screenHeight, "raylib [core] example - basic window");
    
    pacman.load();
    SetTargetFPS(60);

    while (!w.ShouldClose())    // Detect window close button or ESC key
    {
       
        BeginDrawing();

        ClearBackground(BLACK);

        // To-do: Detect movement key

        // To-do: invoke it as a thread
        map.DrawMap(&pacman);

        EndDrawing();
       
    }

    pacman.unload();
    fclose(fMap);

    return 0;
}
