// Parte 3

class Applicants {
	
	var property livingState
	var property isEligible
	var property university
	var property univAttended
	}
	
	method isEligible (company){
		if(company.actualProf.find {company => company.actualProf[] == livingState}){
			isEligible = true
		}
	}
	
	method univAttended (company){
		if(company.actualProf.find {company => company.actualProf[] == university}){
			univAttended = true
		}
	}
}
