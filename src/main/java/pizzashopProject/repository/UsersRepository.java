package pizzashopProject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import pizzashopProject.model.Users;

@Repository
public interface UsersRepository extends JpaRepository<Users, Integer> {
    // No need to write methods; JpaRepository provides all CRUD operations
}
