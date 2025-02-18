package pizzashopProject.dao;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import pizzashopProject.model.Users;

@Component
//general-purpose object that the Spring IoC container manages. 
public class UsersDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//create
	@Transactional
	public void createUsers(Users users) {
		
		this.hibernateTemplate.saveOrUpdate(users);
		
	}
	
	//fetch products
	public List<Users> getUsers(){			//it will return all the object mapped with this class from database
		List<Users> users = this.hibernateTemplate.loadAll(Users.class);
		return users;
	}
	
	//delete the single product
	@Transactional
	public void deleteUsers(int uid)
	{
		//this will store product of uid into p
		Users u = this.hibernateTemplate.load(Users.class, uid);
		this.hibernateTemplate.delete(u);
	}
	
	//get the single product
	public Users getUsers(int uid) {
		return this.hibernateTemplate.get(Users.class, uid);
	}
}