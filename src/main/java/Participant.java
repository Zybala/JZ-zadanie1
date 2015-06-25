/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author rome0_000
 */
public class Participant {

	String imie;
	String nazwisko;
	String email;
	String firma;
	String origin;
	String pozycja;
	
	Participant (String name, String surname, String email, String company, String origin, String position) 
	{
		this.imie = name;
		this.nazwisko = surname;
		this.email = email;
		this.firma = company;
		this.origin = origin;
		this.pozycja = position;
	}

}
