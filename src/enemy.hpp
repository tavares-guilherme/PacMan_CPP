#ifndef __ENEMY 
#define __ENEMY

#include "raylib-cpp.hpp"
#include "map.hpp"

#define RED_ENEMY 1
#define YELLOW_ENEMY 2

class Map;

class Enemy {
    private:
        int x;
        int y;
        int movement;
        double speed_x = 0;
        double speed_y = 0;

        Texture2D texture;

        bool checkNextMove(Map *map, int direction);
        int type;
    public:
        Enemy(int type);

        void draw(int frame, int scale);


        void setX(int a);
        void setY(int b);
        Texture2D getTexture();
        
        void load();
        void unload();

        void doMovement(Map *map);
};

#endif