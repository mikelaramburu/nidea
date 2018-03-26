package com.ipartek.formacion.nidea.pojo;

public class MesaException extends Exception {

	private static final long serialVersionUID = 1L;

	public static final String MENSAJE_PATAS = "Minimo debe tener al menos 1 pata";

	public MesaException(String mensaje) {
		super(mensaje);
	}
}
