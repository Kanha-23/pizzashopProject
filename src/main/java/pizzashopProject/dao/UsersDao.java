package pizzashopProject.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import pizzashopProject.model.Users;
import pizzashopProject.repository.UsersRepository;

import java.util.List;

@Repository
public class UsersDao {

    @Autowired
    private UsersRepository usersRepository;

    // Create or Update User
    public void saveOrUpdateUser(Users user) {
        usersRepository.save(user);
    }

    // Fetch all users
    public List<Users> getAllUsers() {
        return usersRepository.findAll();
    }

    // Fetch single user by ID
    public Users getUserById(int id) {
        return usersRepository.findById(id).orElse(null);
    }

    // Delete user by ID
    public void deleteUser(int id) {
        usersRepository.deleteById(id);
    }
}
