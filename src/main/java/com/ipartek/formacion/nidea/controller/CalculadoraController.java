package com.ipartek.formacion.nidea.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalculadoraController
 */
public class CalculadoraController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RequestDispatcher dispatch;

	public static final int OP_SUMAR = 0;
	public static final int OP_RESTAR = 1;
	public static final int OP_MULTIPLICAR = 2;
	public static final int OP_DIVIDIR = 3;

	int operacion = OP_SUMAR;
	int num1 = 0;
	int num2 = 0;
	float resultado = 0;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Nos llaman a traves de un enlace, peticion GET
		request.getRequestDispatcher("views/calculadora/index.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Nos llaman a traves de un FORM post

		try {
			getParameters(request);
			calcular();
			request.setAttribute("resultado", resultado);
			dispatch = request.getRequestDispatcher("views/calculadora/resultado.jsp");

		} catch (NumberFormatException e) {
			e.printStackTrace();
			request.setAttribute("msg", "Por favor escribe un numero correcto");
			dispatch = request.getRequestDispatcher("views/calculadora/index.jsp");

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("msg", "Disculpe las molestias, tenemos un fallo sin controlar");
			dispatch = request.getRequestDispatcher("views/calculadora/index.jsp");

		} finally {

			dispatch.forward(request, response);
		}

	}

	private void calcular() {

		switch (operacion) {
		case OP_SUMAR:
			resultado = num1 + num2;
			break;
		case OP_RESTAR:
			resultado = num1 - num2;
			break;
		case OP_MULTIPLICAR:
			resultado = num1 * num2;
			break;
		case OP_DIVIDIR:
			resultado = num1 / num2;
			break;
		default:
			break;
		}
	}

	private void getParameters(HttpServletRequest request) {

		String snum1 = request.getParameter("num1");
		String snum2 = request.getParameter("num2");
		String sOperacion = request.getParameter("operacion");

		// Aplicar logica de negocio
		operacion = Integer.parseInt(sOperacion);
		num1 = Integer.parseInt(snum1);
		num2 = Integer.parseInt(snum2);
		resultado = 0f;
	}

}
