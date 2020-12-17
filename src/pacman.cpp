#include <iostream>
#include <stdlib.h>
#include <cstring>
#include <stdio.h>
#include <math.h>
#include "map.hpp"

using namespace std;

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

void Pacman::setX(int a) {
    this->x = a;
}
void Pacman::setY(int b) {
    this->y = b;
}
int  Pacman::getX(){return this->x;}
int  Pacman::getY(){return this->y;}
Texture2D Pacman::getTexture(){return this->texture;}

void Pacman::draw(int frame, int scale) {
    // Arrumar o scale e frame

    DrawTexture(this->getTexture(), frame + scale * (this->x + this->speed_x), frame + scale * (this->y + this->speed_y), WHITE);
}

double getPositive(double x) {
    if (x < 0)
        return x * -1;
    
    return x;
}

void Pacman::getKeyboardMovement() {

    // First movement    
    if(this->speed_x == 0 && this->speed_y == 0) {
        if (IsKeyDown(KEY_UP) || IsKeyDown(KEY_W)) {
            this->movement = UP;
        } else if (IsKeyDown(KEY_DOWN) || IsKeyDown(KEY_S)) {
            this->movement = DOWN;
        } else if (IsKeyDown(KEY_LEFT) || IsKeyDown(KEY_A)) {
            this->movement = LEFT;
        } else if (IsKeyDown(KEY_RIGHT) || IsKeyDown(KEY_D)) {
            this->movement = RIGHT;
        }
    } else {
        if (IsKeyDown(KEY_UP) || IsKeyDown(KEY_W)) {
            this->n_move = UP;
        } else if (IsKeyDown(KEY_DOWN) || IsKeyDown(KEY_S)) {
            this->n_move = DOWN;
        } else if (IsKeyDown(KEY_LEFT) || IsKeyDown(KEY_A)) {
            this->n_move = LEFT;
        } else if (IsKeyDown(KEY_RIGHT) || IsKeyDown(KEY_D)) {
            this->n_move = RIGHT;
        }
    
    }
}

// Check if the next move is possible, that is, if there isn't a wall in the path.
bool Pacman::checkNextMove(Map *map) {
    switch(this->n_move) {
        case(UP):
            if(map->isWall(this->y - 1, this->x)) return false;
            else return true;
            break;
        case(DOWN):
            if(map->isWall(this->y + 1, this->x)) return false;
            else return true;
            break;
        case(RIGHT):
            if(map->isWall(this->y, this->x + 1)) return false;
            else return true;
            break;
        case(LEFT):
            if(map->isWall(this->y, this->x -1)) return false;
            else return true;
            break;
    }
}

void Pacman::doMovement(Map *map) {
    double speed = 0.05;
    void* aux = this;

    if (abs(this->speed_x) >= 1.0) {
        if (this->movement == LEFT) {
            this->x -= 1;

        } else if (this->movement == RIGHT) {
            this->x += 1;
        
        }

        // After finishing this move, set the next move and compute the score
        map->computeScore(this->x, this->y);
        
        // If the next move is possible, change the direction
        if(this->checkNextMove(map)) {
            this->speed_x = 0;
            this->movement = this->n_move;
        } else
            this->speed_x = 0.001;
        
    } else {
        if (this->movement == LEFT && !map->isWall(this->y, this->x  + this->speed_x)) {
            this->speed_x -= speed;
            this->speed_y = 0;
        } else if (this->movement == RIGHT && !map->isWall(this->y, this->x + 1 + this->speed_x)) {
            this->speed_x += speed;
            this->speed_y = 0;
        } else {
            this->speed_x = 0;
        }
    }

    if (abs(this->speed_y) >= 1.0) {
        if (this->movement == UP) {
            this->y -= 1;

        } else if (this->movement == DOWN) {
            this->y += 1;
        
        }

        // After finishing this move, set the next move
        map->computeScore(this->x, this->y);
        
        // If the next move is possible, change the direction
        if(this->checkNextMove(map)) {
            this->movement = this->n_move;
            this->speed_y = 0;
        }else 
            this->speed_y = 0.001;
        

    } else {
        if (this->movement == UP && !map->isWall(this->y + this->speed_y, this->x)) {
            this->speed_y -= speed;
            this->speed_x = 0;
        } else if (this->movement == DOWN && !map->isWall(this->y + 1 + this->speed_y, this->x)) {
            this->speed_y += speed;
            this->speed_x = 0;
        } else {
            this->speed_y = 0;
        }
    }
}
