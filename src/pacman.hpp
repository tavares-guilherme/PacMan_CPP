#ifndef __PACMAN 
#define __PACMAN

#include "pacman.hpp"
#include "map.hpp"
#include "raylib-cpp.hpp"

#define UP 1
#define DOWN 2
#define LEFT 3
#define RIGHT 4

class Pacman {
    private :
        float x;
        float y;
        int movement;
        float speed = 0;

        Texture2D texture;
        
    public :
        Pacman(int a, int b);

        void load();
        void unload();

        void setX(int a);
        void setY(int b);
        int getX();
        int getY();
        Texture2D getTexture();

        void getKeyboardMovement();
        void doMovement(Map *map);

};

Pacman::Pacman(int a, int b) {
    this->x = a; 
    this->y = b;
}

void Pacman::load() {
    this->texture = LoadTexture("../src/resources/pacman.png");
}

void Pacman::unload() {
    UnloadTexture(this->texture);
}

void Pacman::setX(int a){this->x = a;}
void Pacman::setY(int b){this->y = b;}
int  Pacman::getX(){return this->x;}
int  Pacman::getY(){return this->y;}
Texture2D Pacman::getTexture(){return this->texture;}

void Pacman::draw() {
    // Arrumar o scale e frame
    DrawTexture(this->getTexture(), this->frame + this->scale * this->x, this->frame + this->scale * this->y, WHITE);
}

void Pacman::getKeyboardMovement() {
    if (IsKeyDown(KEY_UP) || IsKeyDown(KEY_W)) {
        this->movement = UP;
    } else if (IsKeyDown(KEY_DOWN) || IsKeyDown(KEY_S)) {
        this->movement = DOWN;
    } else if (IsKeyDown(KEY_LEFT) || IsKeyDown(KEY_A)) {
        this->movement = LEFT;
    } else if (IsKeyDown(KEY_RIGHT) || IsKeyDown(KEY_D)) {
        this->movement = RIGHT;
    }
}

void Pacman::doMovement(Map *map) {
    int next_x = this->x;
    int next_y = this->y;

    // Maquina de estados dos movimentos possiveis
    switch (movement) {
        case UP:
            next_y--;
            break;
        case DOWN:
            next_y++;
            break;
        case LEFT:
            next_x--;
            break;
        case RIGHT:
            next_x++;
            break;
        default:
            break;
    }

    if (!map->isWall(next_x, next_y)) {
        // Realiza o movimento
        // Speed em relação ao tempo

    }
}

#endif