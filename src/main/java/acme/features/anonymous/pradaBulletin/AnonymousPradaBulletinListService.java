
package acme.features.anonymous.pradaBulletin;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.pradaBulletins.PradaBulletin;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Anonymous;
import acme.framework.services.AbstractListService;

@Service

public class AnonymousPradaBulletinListService implements AbstractListService<Anonymous, PradaBulletin> {

	@Autowired
	AnonymousPradaBulletinRepository repository;


	@Override
	public boolean authorise(final Request<PradaBulletin> request) {
		assert request != null;
		return true;
	}

	@Override
	public void unbind(final Request<PradaBulletin> request, final PradaBulletin entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "company", "author", "text");
	}

	@Override
	public Collection<PradaBulletin> findMany(final Request<PradaBulletin> request) {
		assert request != null;

		Collection<PradaBulletin> result;

		result = this.repository.findMany();
		return result;
	}

}
