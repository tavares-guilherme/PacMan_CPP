#ifndef __POSITION
#define __POSITION

class Position{
    /*
     *  Esta classe representa uma posição que um componente do jogo pode ocupar no mapa.
     */
    private:
        int x;
        int y;
    
    public:
        Position(int x, int y);
        // Getter
        int getX();
        int getY();
        // Setter
        int setX(int x);
        int SetY(int y);
        int setPosition(int x, int y);
};

#endif