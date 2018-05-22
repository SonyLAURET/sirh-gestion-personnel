package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class EditerCollaborateurController extends HttpServlet {

	private static final Logger LOG = LoggerFactory.getLogger(EditerCollaborateurController.class);

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String avecMatriculeParam = req.getParameter("matricule");
		resp.setContentType("text/html");

		if (avecMatriculeParam != null) {
			resp.getWriter()
					.write("<h1> Edition de collaborateur </h1><br/><p>Matricule = " + avecMatriculeParam + "</p>");
		} else {
			resp.sendError(400, " Un matricule est attendu");
		}

	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String avecMatriculeParam = req.getParameter("matricule");
		String avecTitreParam = req.getParameter("titre");
		String avecNomParam = req.getParameter("nom");
		String avecPrenomParam = req.getParameter("prenom");
		resp.setContentType("text/html");
		if (avecMatriculeParam != null && avecTitreParam != null && avecNomParam != null && avecPrenomParam != null) {
			resp.getWriter()
					.write("<!DOCTYPE html><html><head><meta charset='UTF-8'/></head><body><h1> Edition de collaborateur </h1><p>Matricule : "
							+ avecMatriculeParam + "</p>" + "<p>titre : " + avecTitreParam + "</p>" + "<p>Prenom : "
							+ avecPrenomParam + "</p>" + "<p>Nom : " + avecNomParam + "</p></body></head>");
		} else {
			String nullMatricule = "";
			String nullTitre = "";
			String nullNomp = "";
			String nullPrenom = "";
			if (avecMatriculeParam == null) {
				nullMatricule = "matricule";
			}
			if (avecNomParam == null) {
				nullNomp = "nom";
			}
			if (avecTitreParam == null) {
				nullTitre = "titre";
			}
			if (avecPrenomParam == null) {
				nullPrenom = "prenom";
			}
			resp.sendError(400, "les paramètres suivants sont incorrectes : " + nullMatricule + " " + nullNomp + " "
					+ nullPrenom + " " + nullTitre);

		}

	}

}
