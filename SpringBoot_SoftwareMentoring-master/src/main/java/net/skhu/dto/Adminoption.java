package net.skhu.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name="adminoption")
public class Adminoption {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int adminOptionId;

	int metorActive;
	int menteeActive;
	int surveyActive;
	int menteeMaxNum;
}
