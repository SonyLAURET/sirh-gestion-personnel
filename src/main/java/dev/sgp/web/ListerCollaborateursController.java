package dev.sgp.web;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class ListerCollaborateursController extends HttpServlet {

	// recuperation du service
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// resp.getWriter().write("ta maman doit être fière de toi, dis-donc
		// !");
		//
		// // recupere la valeur d'un parametre dont le nom est avecPhoto
		// String avecPhotoParam = req.getParameter("avecPhoto");
		//
		// // recupere la valeur d'un parametre dont le nom est departement
		// String departementParam = req.getParameter("departement");
		// resp.setContentType("text/html");
		//
		// // code HTML ecrit dans le corps de la reponse
		// resp.getWriter().write("<h1>Liste des collaborateurs</h1>" + "<ul>" +
		// "<li>avecPhoto=" + avecPhotoParam
		// + "</li>" + "<li>departement " + departementParam + "</li>" +
		// "</ul>");

		// Tp 03-JSP
		req.setAttribute("listeNoms", Arrays.asList("Robert", "Jean", "Hugues"));
		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(req, resp);

		// utilisation du service
		List<Collaborateur> collaborateurs = collabService.listerCollaborateurs();
	}
}
