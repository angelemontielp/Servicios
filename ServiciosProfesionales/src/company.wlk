// Parte 1

class Company {
	var property referenceSalary
	var property actualProf []
	
	// Variables pregunta 1
	var property expensiveProf []
	
	// Variables pregunta 2
	var property profUniversities #{}
	
	// Variables pregunta 3
	var property cheapestProf	
	
	// Variables pregunta 4
	var property isCovered
	
	// Variables pregunta 5
	var property profAmount []
	
	// Variables pregunta 6
	var property isNotAtractive
	
	
	method addAllProfessional (_Professional){
		actualProf.add(_Professional)
		
	}
	
	
	// Pregunta 1
	method addExpensiveProf (_Professional){
		if(Professional _Professional.profSalary > referenceSalary){
			
			expensiveProf.add(_Professional)
			
		}
	}
	
	// Pregunta 2
	method getUnivesities (_Professional){
		
		profUniversities.add(Professional _Professional.profUniversity)
		
	}
	
	// Pregunta 2
	method getUnivesities (_Professional){
		
		profUniversities.add(Professional _Professional.profUniversity)
		
	}
	
	// Pregunta 3

	method getCheapestProfessional (){
		return actualProf.min({actualProf => actualProf.profSalary})
		
	}
	
	// Pregunta 4
	
	method getCoveredState (_State, _Professional){
		if (_Professional.profState == _State.stateName){
			isCovered = true
		}
	}
	
	// Pregunta 5
	
	method getProfAmount (_University){
		
		actualProf.forEach({_professional =>
			if(_professional.profUniversity == _University.univName){
				profAmount ++
			}
		})
	}
	
	// Pregunta 6 (Bonus)
	
	method notAtractiveProf (_Professional){
		actualProf.forEach()
	}
	
	
	
	// Parte 4
	
	var property selectedProffesional
	var property clients []
	method giveService (_applicant){
		
		if(isEligible){
			selectedProffesional = actualProf[i]
			selectedProffesional.salary()
			clients.add(_applicant)
			
		}
		
	}
}

