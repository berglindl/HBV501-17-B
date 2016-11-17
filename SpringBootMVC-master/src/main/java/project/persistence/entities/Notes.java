package project.persistence.entities;

import javax.persistence.*;

/*
	This is the class for the Notes themselves
	The system generates a table schema based on this class for this entity
*/
@Entity
//Specify a table name
@Table(name = "notestable") 
public class Notes {
	//Declare that this attribute is the id
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String title;
	private String note;

	//Empty so we can create empty Notes to add to our model to use with our form
	public Notes(){

	}

	public Notes(String title, String note){
		this.title = title;
		this.note = note;
	}

	public Long getId(){
		return id;
	}

	public void setId(Long id){
		this.id = id;
	}

	public String getTitle(){
		return title;
	}

	public void setTitle(String title){
		this.title = title;
	}

	public String getNote(){
		return note;
	}

	public void setNote(String note){
		this.note = note;
	}

	//Easy debugging
	@Override
	public String toString(){
		return String.format(
			"Notes[title=%s, note=%s]",
			title, note);
	}
}