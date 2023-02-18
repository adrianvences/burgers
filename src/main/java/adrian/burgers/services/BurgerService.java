package adrian.burgers.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import adrian.burgers.models.Burger;
import adrian.burgers.repositories.BurgerRespository;

@Service // controller talks to the service / service talks to the repository
public class BurgerService {
  
  @Autowired BurgerRespository burgerRespository; // injecting our dependencies 'wiring them up'

  public void createBurger( Burger burger) {
    burgerRespository.save(burger);
  }

  public List<Burger> getAllBurgers(){
    return burgerRespository.findAll();
    
  }

}
