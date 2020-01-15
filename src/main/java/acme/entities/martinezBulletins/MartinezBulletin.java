
package acme.entities.martinezBulletins;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Past;

import org.springframework.format.annotation.NumberFormat;

import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class MartinezBulletin extends DomainEntity {

	//Serialisation identifier

	private static final long	serialVersionUID	= 1L;

	//Atributtes

	@NotBlank
	private String				autor;

	@NotBlank
	@NumberFormat
	private String				nota;

	@NotBlank
	private String				comentarios;

	@Temporal(TemporalType.TIMESTAMP)
	@Past
	private Date				fecha;

}
