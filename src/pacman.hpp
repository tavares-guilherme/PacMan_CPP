#ifndef __PACMAN 
#define __PACMAN

#include "pacman.hpp"
#include "raylib-cpp.hpp"

#define UP 1
#define DOWN 2
#define LEFT 3
#define RIGHT 4

class Pacman{
    private :
        int x;
        int y;
        int movement;
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

#endif