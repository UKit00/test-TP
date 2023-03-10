
// Auteur: ProgKIT
// Date: 10-03-2023


#include <stdio.h>

#define MIN 1
#define MAX 100
int main()
{
    
    int nbAleatoire, nbEntrer;
    char rep = 'o';
    
    
    //while(rep == 'o') {
        printf("***************************************\n");
        printf("*\tJEU DE DEEVINETTE \n");
        printf("***************************************\n");
        
        nbAleatoire = rand() % (MAX - MIN + 1) + MIN;
        
        printf("\nQuel est le nombre entre (%d et %d):  ", MIN, MAX);
        scanf("%d", &nbEntrer);
        
        if(nbAleatoire < nbEntrer){
            printf("\nPLUS GRAND !!!");
        } else if (nbAleatoire > nbEntrer){
            printf("\nPLUS PETIT !!!");   
        } else {
            printf("\nBRAVO !!!");
        }
        fflush(stdin);
    //    printf("\nVoulez-vous recommencer?(o/n): ");
    //    rep = getchar();
    //}
    
    //printf("\n\nBonne journee!!!\n");

    return 0;
}
