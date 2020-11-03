
#include "raylib-cpp.hpp"
#include "map.hpp"
#include "pacman.hpp"
#include "position.hpp"

int main() {

    
    int screenWidth = 720;
    int screenHeight = 720;

    raylib::Window w(screenWidth, screenHeight, "raylib [textures] example - image loading");
    raylib::Texture texture("../src/resources/maze.png");
    raylib::Color background(RAYWHITE);
    raylib::Color textColor(LIGHTGRAY);
    raylib::Vector2 shape(50,50);;

    int t = 0;

    // Main game loop
    while (!w.ShouldClose())    // Detect window close button or ESC key
    {

        // Draw
        //----------------------------------------------------------------------------------
        BeginDrawing();

            background.ClearBackground();
            texture.Draw(0,0);
            shape.DrawCircle(2, WHITE);
            
        EndDrawing();
        //----------------------------------------------------------------------------------
    }

    return 0;
}