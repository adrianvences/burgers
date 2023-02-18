package adrian.burgers.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import adrian.burgers.models.Burger;

@Repository
public interface BurgerRespository extends CrudRepository <Burger, Long> {
  List<Burger> findAll();
  
}
