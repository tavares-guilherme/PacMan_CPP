#ifndef __MAP
#define __MAP

#include "component.hpp"

/*
* Classe que representa o mapa e seus atributos.
*/
class Map{
    private:
        int** board; /*!- Matriz que armazena o que há em cada espaço do jogo. Será uma região Crítica -!*/
    
    public:
        Map(int** board); 
        void  ResetMap();
        int** GetBoard();
};

Map loadMap(FILE* mapFile);

#endif