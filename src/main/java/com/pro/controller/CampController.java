package com.pro.controller;

import java.util.ArrayList;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pro.model.DonationCamp;
import com.pro.model.Doner;
import com.pro.service.AdminService;
import com.pro.service.CampListService;
import com.pro.service.DonarListService;
import com.pro.service.DonationCampService;
import com.pro.service.DonerService;

@Controller
public class CampController {
	@GetMapping("home")
	public String showHome() {
		return "home";
	}

	@Autowired
	AdminService adminService;

	@GetMapping("adminLogin")
	public String showAdminLogin() {
		return "adminLogin";
	}

	@PostMapping("adminLogin")
	public String validateAdmin(ModelMap model, @RequestParam String user, @RequestParam String password) {
		if (!adminService.validateUser(user, password)) {
			model.put("errorMessage", "Invalid Credentials");
			return "adminLogin";
		}
		return "adminApplication";

	}

	@GetMapping("adminApplication")
	public String getAdminApplication() {
		return "adminApplication";
	}
//DONATIN CAMP FORM-----------------------------------------------------------
	@GetMapping("campForm")
	public String showDonationCampForm(Model model) {
		model.addAttribute("donation", new DonationCamp());
		return "campForm";
	}

	// @PostMapping("save")
	@PostMapping("campForm")
	public String entryDonationCampDetails(ModelMap model, @Valid DonationCamp donation, BindingResult res)
			throws Exception {
		DonationCampService donationCampService = new DonationCampService();
		String result = donationCampService.addDonationCamp(donation);
		if (res.hasErrors()) {
			return "campForm";
		} else {
			model.addAttribute("value", result);
			// System.out.println(patient.getPatientId());
			return "redirect:/campList";
		}
	}
//DONATION CAMP LIST-------------------------------------------------------------------
	@GetMapping("campList")
	public String showCampList(Model model) throws Exception {
		CampListService campListService = new CampListService();
		ArrayList<DonationCamp> todo = campListService.displayCampList();

		model.addAttribute("campDetails", todo);
		return "campList";
	}

	@GetMapping("campList2")
	public String showCampList2(Model model) throws Exception {
		CampListService campListService = new CampListService();
		ArrayList<DonationCamp> todo = campListService.displayCampList();

		model.addAttribute("campDetails", todo);
		return "campList2";
	}

//DONER FORM-------------------------------------------------------------------------------
	@GetMapping("donerForm")
	public String showDonerForm(Model model) {
		model.addAttribute("doner", new Doner());
		return "donerForm";
	}

	@PostMapping("donerForm")
	public String entryDonerDetails(@Valid ModelMap model, Doner doner, BindingResult result) throws Exception {
		DonerService donerService = new DonerService();
		String result1 = donerService.addDoner(doner);
		// DonerDao donerDao=new DonerDao();;
		// String result1=donerDao.addDoner(doner);
		if (result.hasErrors()) {
			return "donerForm";
		} else {
			model.addAttribute("value", result1);
			return "success2";
		}
	}

//DONER LIST----------------------------------------------------------------------------------
	@GetMapping("donerList")
	public String showDonerList(Model model) throws Exception {
		DonarListService donarListService = new DonarListService();
		ArrayList<Doner> todo = donarListService.displayDonerList();
		model.addAttribute("donerDetails", todo);
		return "donerList";
	}
//DELETE CAMP---------------------------------------------------------------------------------
	@GetMapping("/delete/{campId}")
	public String deleteCamp(@PathVariable int campId) throws Exception {
		CampListService campListService = new CampListService();
		campListService.delete(campId);
		return "redirect:/campList";
	}

}
