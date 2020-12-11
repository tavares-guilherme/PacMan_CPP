#ifndef __PACMAN 
#define __PACMAN


#include "raylib-cpp.hpp"
#include "map.hpp"
#include "physac.h"

#define PHYSAC_IMPLEMENTATION

#define UP 1
#define DOWN 2
#define LEFT 3
#define RIGHT 4

class Map;

class Pacman {
    private :
        float x;
        float y;
        int movement;
        float speed = 0;

        PhysicsBody body;
        Texture2D texture;
        
    public :
        Pacman(int a, int b);

        void load();
        void unload();

        void draw(int frame, int scale);

        void setX(float a);
        void setY(float b);
        float getX();
        float getY();
        Texture2D getTexture();

        void getKeyboardMovement();
        void doMovement(Map *map);

};

#endif