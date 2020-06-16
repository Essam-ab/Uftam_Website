import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, from } from 'rxjs';
import { Formation } from 'src/app/classes/formation';
import { environment } from 'src/environments/environment';

interface CompanyResponse {
  success: boolean,
  message: string
}

@Injectable({
  providedIn: 'root'
})
export class CompanyService {

  constructor(
    private http: HttpClient
  ) { }

  displayCompanies() {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/company/displayCompanies.php"
    );
  }

  updateCompany(lib, id) {
    return this.http.post<CompanyResponse>(environment.apiUrl + "handers/company/updateCompany.php", {
      lib,
      id
    }
    );
  }

  getAllCompany() {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/company/getAllCompany.php"
    );
  }

  updateCompanyStatus(id, status) {
    return this.http.post<Response>(
      environment.apiUrl + "handers/company/changeCompanyStatus.php", {
      id, status
    }
    );
  }

  deleteCompany(id) {
    return this.http.put<Response>(
      environment.apiUrl + "handers/company/deleteCompany.php", {
      id
    }
    );
  }
}
