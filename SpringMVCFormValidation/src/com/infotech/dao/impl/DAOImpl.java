package com.infotech.dao.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.infotech.dao.DAO;
import com.infotech.model.Stnt;

@Repository("studentDAO")
public class DAOImpl implements DAO {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	@Override
	public boolean saveStudent(Stnt stnt) {
		int id = (Integer)hibernateTemplate.save(stnt);
		if(id>0)
			return true;
		return false;
	}
	@SuppressWarnings("unchecked")
	@Override
	public Stnt getStudentDetailsByEmailAndPassword(String email,String password){
		DetachedCriteria detachedCriteria =  DetachedCriteria.forClass(Stnt.class);
		detachedCriteria.add(Restrictions.eq("email", email));
		detachedCriteria.add(Restrictions.eq("password", password));
		List<Stnt> findByCriteria = (List<Stnt>) hibernateTemplate.findByCriteria(detachedCriteria);
		if(findByCriteria !=null && findByCriteria.size()>0)
		return findByCriteria.get(0);
		else
			return null;
	}
}
