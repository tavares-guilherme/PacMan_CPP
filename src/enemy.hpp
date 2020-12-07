#ifndef __ENEMY 
#define __ENEMY

#include "enemy.hpp"
#include "pacman.hpp"
#include "map.hpp"
#include "raylib-cpp.hpp"

#define RED_ENEMY 1
#define YELLOW_ENEMY 2

class Enemy {
    private:
        float x;
        float y;

        Texture2D texture;

        int type;
    public:
        Enemy(int type);

        void load();
        void unload();

        void doMovement(Map* map);
};

void Enemy::load() {
    if (this->type == RED_ENEMY) {
        this->texture = LoadTexture("../src/resources/enemy-1.png");
    } else {
        this->texture = LoadTexture("../src/resources/enemy-2.png");
    }
}

void Enemy::unload() {
    UnloadTexture(this->texture);
}

void Enemy::doMovement(Map* map) {
    
}

#endif