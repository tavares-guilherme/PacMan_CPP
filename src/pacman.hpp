#ifndef __PACMAN 
#define __PACMAN

#include "position.hpp"
#include "component.hpp"

/*
 *  Classe filha de Component, que representa o PacMan, ou seja, o jogador.
 * 
 *  bool vulnerable: 
 *          Recebe 'true' se o pacman pode ser morto pelos fantasmas.
 *          Recebe 'false' se o pacman pode comer os fantasmas.
 * 
 */
class Pacman : public Component {
    private :
        bool vulnerable;
    public :
        Pacman(Position p, bool v);
        bool isVulnerable();
        

};

#endif