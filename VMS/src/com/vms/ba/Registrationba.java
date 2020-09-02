package com.vms.ba;
import com.vms.ba.Registrationba;
import com.vms.dao.Registrationdao;
public class Registrationba {
		public void RegisterBA(String username, String password,String email) {
			Registrationdao y2 = new Registrationdao();
			y2.RegisterDAO(username, password, email);
		}

	}