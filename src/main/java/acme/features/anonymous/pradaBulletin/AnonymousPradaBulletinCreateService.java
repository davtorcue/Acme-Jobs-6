
package acme.features.anonymous.pradaBulletin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.pradaBulletins.PradaBulletin;
import acme.framework.components.Errors;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Anonymous;
import acme.framework.services.AbstractCreateService;

@Service
public class AnonymousPradaBulletinCreateService implements AbstractCreateService<Anonymous, PradaBulletin> {

	@Autowired
	AnonymousPradaBulletinRepository repository;


	@Override
	public boolean authorise(final Request<PradaBulletin> request) {
		assert request != null;
		return true;
	}

	@Override
	public void bind(final Request<PradaBulletin> request, final PradaBulletin entity, final Errors errors) {
		assert request != null;
		assert entity != null;
		assert errors != null;

		request.bind(entity, errors);

	}

	@Override
	public void unbind(final Request<PradaBulletin> request, final PradaBulletin entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "company", "author", "text");
	}

	@Override
	public PradaBulletin instantiate(final Request<PradaBulletin> request) {
		assert request != null;

		PradaBulletin result;

		result = new PradaBulletin();
		result.setAuthor("Richard Stallman");
		result.setText("Intel has nice chips!");
		result.setCompany("Intel");
		return result;
	}

	@Override
	public void validate(final Request<PradaBulletin> request, final PradaBulletin entity, final Errors errors) {
		assert request != null;
		assert entity != null;
		assert errors != null;
	}

	@Override
	public void create(final Request<PradaBulletin> request, final PradaBulletin entity) {
		assert request != null;
		assert entity != null;

		this.repository.save(entity);

	}

}
