#ifndef __COMPONENT
#define __COMPONENT

#include "position.hpp";

/*
 *  Classe que representa um componente genérico do jogo, a ser colocado no tabuleiro
 */
class Component {
    
    private:
        Position position;
    public:
        Component(Position p);
        Position getPosition();
};

#endif