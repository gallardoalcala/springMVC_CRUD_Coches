package com.jeromejaglale.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import com.jeromejaglale.domain.Car;
import com.jeromejaglale.service.CarService;

@Controller
public class CarController {
	@Autowired
	private CarService carService;
	
	@RequestMapping("/index")
	public void index(){
	}

	@RequestMapping("/car/list")
	public void carList(Model model) {
		List<Car> carList = carService.findAll();
		model.addAttribute("carList", carList);
	}
	
	@RequestMapping("/car/add")
	public void carAdd() {
	}
	
	@RequestMapping(value="/car/add", method=RequestMethod.POST)
	public String carAddSubmit(@ModelAttribute("car") @Valid Car car, BindingResult result) {
		if(result.hasErrors()) {
			return "car/add";
		}
		carService.add(car);
		return "redirect:/car/list";
			
	}
	@RequestMapping("/car/show/{id}")
	public String carShow(Model model,@PathVariable("id") int id){
		Car car = carService.show(id);
		model.addAttribute("car",car);
		return "/car/carShow";
	}

	@RequestMapping("/car/eliminar/{id}")
	public String carDelete(Model model,@PathVariable("id") int id){
		Car car = carService.show(id);
		carService.deleteCar(id);
		model.addAttribute("car",car);
		return "/car/eliminar";
	}
	@RequestMapping("/car/edit/{id}")
  	public String edit(Model model,@PathVariable("id") int id){
	  	Car car = carService.show(id);
	    model.addAttribute("car",car);
	    return "/car/editForm";
  	}

	@RequestMapping(value= "/car/edit", method = RequestMethod.POST)
	public String edicion(Model model,@ModelAttribute("car") @Valid Car car, BindingResult result){
	    if(result.hasErrors()) {
			return "car/edit/"+car.getId();
		}

		int res = carService.updateCar(car);
	  	return "/car/edit";
  }
}