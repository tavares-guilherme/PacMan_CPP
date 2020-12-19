#include <iostream>
#include <stdlib.h>
#include <cstring>
#include <stdio.h>
#include "map.hpp"
#include "enemy.hpp"

using namespace std;

Enemy::Enemy(int type) {
    this->type = type;
    if(type == RED_ENEMY)
        this->movement = RIGHT;
    else
        this->movement = LEFT;    
}

void Enemy::draw(int frame, int scale) {
    this->posM.lock();

    DrawTexture(this->getTexture(), frame + scale * (this->x + this->speed_x), frame + scale * (this->y + this->speed_y), WHITE);

    this->posM.unlock();
}

void Enemy::setX(int a) {
    this->x = a;
}
void Enemy::setY(int b) {
    this->y = b;
}
int Enemy::getX() {
    return this->x;
}
int Enemy::getY() {
    return this->y;
}
Texture2D Enemy::getTexture(){return this->texture;}


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

// Check if the next move is possible, that is, if there isn't a wall in the path.
bool Enemy::checkNextMove(Map *map, int direction) {
    switch(direction) {
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

void Enemy::doMovement(Map *map) {
    double speed;

    if(this->type == RED_ENEMY) speed = 0.05;
    else speed = 0.075;
    // Lock enemy position
    this->posM.lock();

    if (abs(this->speed_x) >= 1.0) {
        if (this->movement == LEFT) {
            this->x -= 1;

        } else if (this->movement == RIGHT) {
            this->x += 1;
            
        }

        if(this->checkNextMove(map, UP) || this->checkNextMove(map, DOWN) ) {
        
            // Do Red Movement
            int n_move = GetRandomValue(1, 2);
                
            while(!this->checkNextMove(map, n_move)) {
                n_move = GetRandomValue(1, 2);
            }

            this->movement = n_move;
    

        }else if(!this->checkNextMove(map, this->movement)) {
            if(this->movement == LEFT) 
                this->movement = RIGHT;
            else
                this->movement = LEFT;
        }

        this->speed_x = 0;
        
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
        
        // If the next move is possible, change the direction
        if(this->checkNextMove(map, RIGHT) || this->checkNextMove(map, LEFT)) {
            
            // Do Red Movement
            int n_move = GetRandomValue(3, 4);
            
            while(!this->checkNextMove(map, n_move) && n_move != this->movement) {
                n_move = GetRandomValue(3, 4);
            }

            this->movement = n_move;

        }else if(!this->checkNextMove(map, this->movement)) {
            if(this->movement == UP) 
                this->movement = DOWN;
            else
                this->movement = UP;
        }
    

        this->speed_y = 0;

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

    // Unlock enemy position
    this->posM.unlock();
}

void Enemy::initThreads(Map* map) {
    this->movementThread = std::thread(&Enemy::doMovement, this, map);
}

void Enemy::destroyThreads() {
    this->movementThread.join();
}