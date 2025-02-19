package pizzashopProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import pizzashopProject.dao.UsersDao;
import pizzashopProject.model.Users;

import java.util.List;

@Controller
@RequestMapping("/users")
public class MainController {

    @Autowired
    private UsersDao usersDao;

    @PostMapping("/save")
    @ResponseBody
    public String saveUser(@RequestBody Users user) {
        usersDao.saveOrUpdateUser(user);
        return "User saved successfully";
    }

    @GetMapping("/all")
    @ResponseBody
    public List<Users> getAllUsers() {
        return usersDao.getAllUsers();
    }

    @GetMapping("/{id}")
    @ResponseBody
    public Users getUserById(@PathVariable int id) {
        return usersDao.getUserById(id);
    }

    @DeleteMapping("/delete/{id}")
    @ResponseBody
    public String deleteUser(@PathVariable int id) {
        usersDao.deleteUser(id);
        return "User deleted successfully";
    }
}
