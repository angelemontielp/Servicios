class University {
	var property univName
	var property professionalSalary
	var property univState
	var property recommendedSalary
	
	// Parte 2
	var property donations
	
	method getStateName (_state){
		univState = _state.stateName
	}
	
	method getProfessionalSalary (_salary){
		professionalSalary = _salary
	}	
}

class Professional {
	var property profName
	var property profType // Indica el tipo de profesional (Local, Litoral, Libre)
	var property profUniversity // Indica en qué universidad estudió
	var property profState // Indica en qué Provincia puede trabajar
	var property profSalary
	method getUniversityName (_university){
		profUniversity = _university.univName
	}
	method getUniversitySalary (_university){
		profSalary = _university.professionalSalary
	}
	method getStateName (_state){
		profState = _state.stateName
	}
	
	method salary (_salary){
		_salary = _salary + profSalary
	}	
}

class LocalProfessional inherits  Professional {
	
	method getWorkingState (_University){
		profState = _University.univState
	}
	
	// Parte 2
	
	method donateSalary overrides salary (profSalary){	
		donations = donations + profSalary/2
		profSalary = - profSalary		
	}
}

class LitoralProfessional inherits  Professional {
	profState = ['Entre Ríos' , 'Santa Fe', 'Corrientes']
	profSalary = 3000	
}



	// Parte 2
	method donateSalary overrides salary (profSalary){	
			association.getTotalRecovered = getTotalRecovered + profSalary
			profSalary = - profSalary			
	}

class FreeProfessional inherits  Professional {
	var property freeSalary
	var property freeState []
	method getUniversitySalary (_University){
		profSalary = _University.professionalSalary + self.freeSalary
	}
	
	// Parte 2
	
	method saveMoney (profSalary) overrides salary{
		freeSalary = freeSalary + profSalary
	}
	
	method giveMoney (professional, money){	
		freeSalary = freeSalary - money
		professional.profSalary = professional.profSalary - money
	}
	
}

class State  {
	method stateName (_stateName){
		return _stateName
	}
	
}


// Parte 2
object association {
	method getTotalRecovered (_amount)
	return _amount
	
}
