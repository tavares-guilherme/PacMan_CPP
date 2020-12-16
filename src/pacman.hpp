#ifndef __PACMAN 
#define __PACMAN


#include "raylib-cpp.hpp"
#include "map.hpp"

#define UP 1
#define DOWN 2
#define LEFT 3
#define RIGHT 4

class Map;

class Pacman {
    private :
        double x;
        double y;
        int movement;
        int n_move;
        double speed_x = 0;
        double speed_y = 0;

        Texture2D texture;

        bool checkNextMove(Map *map);
    public :
        Pacman(int a, int b);

        void load();
        void unload();

        void draw(int frame, int scale);

        void setX(double a);
        void setY(double b);
        double getX();
        double getY();
        Texture2D getTexture();

        void getKeyboardMovement();
        void doMovement(Map *map);

};

#endif