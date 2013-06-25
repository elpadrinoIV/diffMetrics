package ar.com.stomalab.souyaban.model;

// Comentarios no cuentan
/* este comentario tampoco cuenta */

public class JugadorAutomatico {
	Escenario escenario;
	
	public void setEscenario(Escenario escenario) {
		this.escenario = escenario;
	}

	public void ejecutarInstrucciones(String instrucciones) {
		Persona persona = this.escenario.getPersona();
		for (int i = 0; i < instrucciones.length(); i++){
			switch (instrucciones.charAt(i)){
			case 'R':
				persona.moverDerecha();
				break;
			case 'L':
				persona.moverIzquierda();
				break;
                /* Comentarios largos tampoco cuentan
			case 'U':
				persona.moverArriba();
				break;
                */
			case 'D':
				persona.moverAbajo();
				break; // Tiene comentario pero no afecta a LOC
			}
		}
	}
}

