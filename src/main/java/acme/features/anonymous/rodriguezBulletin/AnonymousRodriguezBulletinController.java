
package acme.features.anonymous.rodriguezBulletin;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import acme.entities.rodriguezBulletins.RodriguezBulletin;
import acme.framework.components.BasicCommand;
import acme.framework.controllers.AbstractController;
import acme.framework.entities.Anonymous;

@Controller
@RequestMapping("/anonymous/rodriguezBulletin/")
public class AnonymousRodriguezBulletinController extends AbstractController<Anonymous, RodriguezBulletin> {

	//Internal state

	@Autowired
	private AnonymousRodriguezBulletinListService	listService;

	@Autowired
	private AnonymousRodriguezBulletinCreateService	createService;


	//Constructors

	@PostConstruct
	private void initialise() {
		super.addBasicCommand(BasicCommand.LIST, this.listService);
		super.addBasicCommand(BasicCommand.CREATE, this.createService);

	}
}
