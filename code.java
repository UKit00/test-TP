// Auteur: ProgKIT
// Date: 10-03-2023

import java.util.Scanner;
import java.util.Random;

public class Main {

    public static final int MIN = 1;
    public static final int MAX = 100;
    
    public static void main(String[] args) {
        
        int nbAleatoire, nbEntrer;
       // char rep = 'o';
        Scanner scanner = new Scanner(System.in);
        Random random = new Random();
        
       // while(rep == 'o') {
            System.out.println("***************************************");
            System.out.println("*\tJEU DE DEEVINETTE ");
            System.out.println("***************************************");
            
            nbAleatoire = random.nextInt((MAX - MIN) + 1) + MIN;
            
            System.out.print("\nQuel est le nombre entre (" + MIN + " et " + MAX + "): ");
            nbEntrer = scanner.nextInt();
            
            if(nbAleatoire < nbEntrer){
                System.out.println("\nPLUS GRAND !!!");
            } else if (nbAleatoire > nbEntrer){
                System.out.println("\nPLUS PETIT !!!");   
            } else {
                System.out.println("\nBRAVO !!!");
            }
            
        //    scanner.nextLine();
            
        //    System.out.print("\nVoulez-vous recommencer? (o/n): ");
            //rep = scanner.nextLine().charAt(0);
        //}
        
        //System.out.println("\n\nBonne journée !!!");
        
        
    }
}