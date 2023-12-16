package com.codoacodo.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.codoacodo.dao.OradorDAO;

/*HERENCIA*/
//Create Controller es hijo de :
@WebServlet("/AltaController")
public class AltaController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String nombre = req.getParameter("nombre");
		String apellido = req.getParameter("apellido");
		String mail = req.getParameter("mail");
		String tema = req.getParameter("tema");
		
		//crear ProductoDAO
		OradorDAO dao = new OradorDAO();
		
		dao.crearOrador(nombre,apellido, mail, tema);
		
		resp.sendRedirect(req.getContextPath()+"/api/ListadoController");
	}
}
