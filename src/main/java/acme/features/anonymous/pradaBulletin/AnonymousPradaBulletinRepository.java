
package acme.features.anonymous.pradaBulletin;

import java.util.Collection;

import org.springframework.data.jpa.repository.Query;

import acme.entities.pradaBulletins.PradaBulletin;
import acme.framework.repositories.AbstractRepository;

public interface AnonymousPradaBulletinRepository extends AbstractRepository {

	@Query("select s from PradaBulletin s")
	Collection<PradaBulletin> findMany();
}
