
package acme.features.anonymous.pradaBulletin;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import acme.entities.pradaBulletins.PradaBulletin;
import acme.framework.components.BasicCommand;
import acme.framework.controllers.AbstractController;
import acme.framework.entities.Anonymous;

@Controller
@RequestMapping("/anonymous/pradabulletin/")
public class AnonymousPradaBulletinController extends AbstractController<Anonymous, PradaBulletin> {

	@Autowired
	private AnonymousPradaBulletinListService	listService;

	@Autowired
	private AnonymousPradaBulletinCreateService	createService;


	@PostConstruct
	private void initialise() {
		super.addBasicCommand(BasicCommand.LIST, this.listService);
		super.addBasicCommand(BasicCommand.CREATE, this.createService);
	}
}
