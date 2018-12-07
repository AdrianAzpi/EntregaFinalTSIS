import java.util.ArrayList;
import java.util.Scanner;

public class juegoGato {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		ArrayList<String> filaUno = new ArrayList<String>();
		//ArrayList<String> filaDos = new ArrayList<String>();
		//ArrayList<String> filaTres = new ArrayList<String>();
		
		//Datos filaUno
		filaUno.add(" ");
		filaUno.add(" ");
		filaUno.add(" ");
		filaUno.add(" ");
		filaUno.add(" ");
		filaUno.add(" ");
		filaUno.add(" ");
		filaUno.add(" ");
		filaUno.add(" ");
		//.iterator();
		// Validacion del tamaño del tablero
		showGameField(filaUno);
		
		//Recibir datos de los jugadores
		@SuppressWarnings("resource")
		Scanner playerOne = new Scanner(System.in);
		@SuppressWarnings("resource")
		Scanner playerTwo = new Scanner(System.in);
		
		//while((filaUno.size() >= 3) == false && (filaDos.size() >= 4) == false && (filaTres.size() >= 4) == false) {
		
		
		//public static void insertaFicha() {
		
		while(true) {
			System.out.print("Jugador Uno(X): ");
			int playerOneTurn = Integer.parseInt(playerOne.nextLine());
			try {
				if((filaUno.get(playerOneTurn)=="X") || (filaUno.get(playerOneTurn)=="O") ) {
					System.out.print("No puedes asignar sobre otra ficha\n");
				}
				else {
					filaUno.set(playerOneTurn, "X");
					
				}
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("Fuera del tablero");
			}
			showGameField(filaUno);
			logicGame(filaUno);
			System.out.print("Jugador Dos(O): ");
			//fila
			int playerTwoTurn = Integer.parseInt(playerTwo.nextLine());
			try {
				if((filaUno.get(playerTwoTurn)=="X") || (filaUno.get(playerTwoTurn)=="O") ) {
					System.out.print("No puedes asignar sobre otra ficha\n");
					
				}
				else {
					filaUno.set(playerTwoTurn, "O");
					
				}
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("Fuera del tablero");
			}
			showGameField(filaUno);
			logicGame(filaUno);
		}
	}
	
	//Logica del juego
	public static void logicGame(ArrayList<String> filaUno){
		System.out.println("Resultado: ");
		if((filaUno.get(0) == "O") && (filaUno.get(1)=="O") && (filaUno.get(2)=="O")) {
			System.out.println("Ganó JUGADOR 2");
			System.exit(0);
		}
		else if((filaUno.get(0) == "X") && (filaUno.get(1)=="X") && (filaUno.get(2)=="X")) {
			System.out.println("Ganó JUGADOR 1");
			System.exit(0);
		}
		
		else {
			System.out.println("La partida aun no termina...\n");
		}
	}
	
	
	public static void showGameField(ArrayList<String> filaUno) {
	if (filaUno.size() >= 10){
		System.out.println("No puedes ingresar elemento en esa posicion\n");
	}else {
		for(int i=0; i< filaUno.size(); ++i) {
			if(filaUno.get(i).isEmpty()) {
				//System.out.println("| |");
			}	

			if(filaUno.get(i).isEmpty()==false) {
				System.out.print("| "+filaUno.get(i)+" |");
				if(i==2) {
					System.out.println("");
				}
				if(i==5) {
					System.out.println(" ");
				}
			}
			
				
		}
		System.out.println(" ");
		System.out.println(" ");
		System.out.println(" ");

	}
	}// fin func
	public static void clearScreen() {  
	    System.out.print("\033[H\033[2J");  
	    System.out.flush();  
	} 
}