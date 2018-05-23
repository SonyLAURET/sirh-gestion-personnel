package dev.sgp.web;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.time.LocalDate;
import java.time.ZonedDateTime;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;

public class CreerCollaborateursController extends HttpServlet {

	int maticuleNumber = 0;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		req.getRequestDispatcher("/WEB-INF/views/collab/nouveau.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		req.getRequestDispatcher("/WEB-INF/views/collab/nouveau.jsp").forward(req, resp);

		String name = (String) req.getAttribute("name");
		String firstName = (String) req.getAttribute("firstname");
		LocalDate birthday = (LocalDate) req.getAttribute("birthday");
		String adress = (String) req.getAttribute("adresse");
		String numeroSecuriteSocial = (String) req.getAttribute("securitySocialNumber");

		if (birthday != null && adress != null && name != null && firstName != null && numeroSecuriteSocial != null) {
			Properties prop = new Properties();
			InputStream input = new FileInputStream("application.properties");
			prop.load(input);
			String society = prop.getProperty("societe");

			Collaborateur collab = new Collaborateur();
			collab.setActif(true);
			collab.setNom(name);
			collab.setPrenom(firstName);
			collab.setDateDeNaissance(birthday);
			collab.setAdresse(adress);
			collab.setNumeroSecuriteSocial(numeroSecuriteSocial);
			collab.setDateHeureCreation(ZonedDateTime.now());
			collab.setEmailPro(firstName.concat(".").concat(name).concat(society));
			collab.setMatricule("M" + maticuleNumber++);
			collab.setPhoto("/img/logo.jpg");

			req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateurs.jsp").forward(req, resp);
		} else {
			resp.sendError(400);
		}

	}
}
