package com.jeromejaglale.service;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.jeromejaglale.domain.Car;

@Service
public class CarService {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	
	public List<Car> findAll() {
		
		List coches = new ArrayList();
		String sql = "select * from coche;";

 		List results = jdbcTemplate.queryForList(sql);
        	for (Object result : results) {
        		Car car = new Car();
            		HashMap map = (HashMap) result;
           		 for (Object key : map.keySet()) {}
            	
	        		car.setName(map.get("name").toString());
	        		car.setPrice(Integer.valueOf(map.get("price").toString()));
	        		car.setId(Integer.valueOf(map.get("id").toString()));
	        		coches.add(car);
        		}

		return coches;
		}
	
	public void add(Car car) {
		String sql = "insert into coche(name,price) values(?,?)";
		jdbcTemplate.update(sql,car.getName(),car.getPrice());
	}

	public Car show(int id) {
		String sql ="select * from coche where id = ?";
		Car car = new Car();  		
		car = jdbcTemplate.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<Car>(Car.class));
        	return car;
	}

	public int deleteCar(int id){
		String sql ="delete from coche where id="+id;
		int res = jdbcTemplate.update(sql);
		return res;
	}

	public int updateCar(Car c){
		String sql = "update coche set name=?,price=? where id=?";
    	int res = jdbcTemplate.update(sql,c.getName(),c.getPrice(),c.getId());
    	return res;
	}

}
