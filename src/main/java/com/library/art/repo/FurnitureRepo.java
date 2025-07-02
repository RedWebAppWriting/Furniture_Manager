package com.library.art.repo;

import com.library.art.model.Furniture;
import org.springframework.data.repository.CrudRepository;

public interface FurnitureRepo extends CrudRepository<Furniture, Long> {
}
