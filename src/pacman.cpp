#include <iostream>
#include <stdlib.h>
#include <cstring>
#include <stdio.h>
#include "map.hpp"
#include "physac.h"

Pacman::Pacman(int a, int b) {
    this->x = a; 
    this->y = b;

    this->body = CreatePhysicsBodyRectangle((Vector2) {a, b}, 10, 10, 10);
}

void Pacman::load() {
    this->texture = LoadTexture("../src/resources/pacman.png");
}

void Pacman::unload() {
    UnloadTexture(this->texture);
}

void Pacman::setX(float a){
    this->x = a;
}
void Pacman::setY(float b){this->y = b;}
float  Pacman::getX(){return this->x;}
float  Pacman::getY(){return this->y;}
Texture2D Pacman::getTexture(){return this->texture;}

void Pacman::draw(int frame, int scale) {
    // Arrumar o scale e frame
    std::cout << this->x << ", " << this->y << std::endl;
    DrawTexture(this->getTexture(), frame + scale * this->x, frame + scale * this->y, WHITE);
}

void Pacman::getKeyboardMovement() {
    if (this->x - (int) this->x == 0 && this->y - (int) this->y == 0) {
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
}

void Pacman::doMovement(Map *map) {
    float next_speed_x = this->x;
    float next_speed_y = this->y;
    int next_x = this->x;
    int next_y = this->y;
    float speed = 0.05;

    // Maquina de estados dos movimentos possiveis

    switch (movement) {
        case UP:
            next_speed_y -= speed;
            next_y--;
            break;
        case DOWN:
            next_speed_y += speed;
            next_y++;
            break;
        case LEFT:
            next_speed_x -= speed;
            next_x--;
            break;
        case RIGHT:
            next_speed_x += speed;
            next_x++;
            break;
        default:
            break;
    }

    if (!map->isWall(next_y, next_x)) {
        // Realiza o movimento
        // Speed em relação ao tempo
        
        this->x = next_speed_x;
        this->y = next_speed_y;
    }
}