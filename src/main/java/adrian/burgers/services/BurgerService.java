package adrian.burgers.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import adrian.burgers.models.Burger;
import adrian.burgers.repositories.BurgerRespository;

@Service // controller talks to the service / service talks to the repository
public class BurgerService {
  
  @Autowired BurgerRespository burgerRespository; // injecting our dependencies 'wiring them up'

  //create
  public void createBurger( Burger burger) {
    burgerRespository.save(burger);
  }

  //read all
  public List<Burger> getAllBurgers(){
    return burgerRespository.findAll();
    
  }

   //update

  public void updateBurger(Burger burger) {
    burgerRespository.save(burger);
  }

    //read one 
    public Burger getOneBurger(Long id) {
      Optional<Burger> optionalBurger = burgerRespository.findById(id); // optional if we get it we get it and if it messes up we get null
      return optionalBurger.orElse(null);
  }

   //delete
   public void deleteBurger(Burger burger){ // a long is a type of int that is bigger
    burgerRespository.delete(burger);
  }

}
