import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Formation } from 'src/app/classes/formation';
import { environment } from 'src/environments/environment';

interface PartnerResponse {
  success: boolean,
  message: string
}

@Injectable({
  providedIn: 'root'
})
export class PartnerService {

  constructor(
    private http: HttpClient
  ) { }

  displaySubPartners() {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/partners/displaySubPartners.php"
    );
  }

  displayPartners() {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/partners/displayPartners.php"
    );
  }

  updatePartner(lib, id) {
    return this.http.post<PartnerResponse>(environment.apiUrl + "handers/partners/updatePartner.php", {
      lib,
      id
    }
    );
  }

  getAllActivePartners() {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/partners/getAllActivePartners.php"
    );
  }

  getAllPartners() {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/partners/getAllPartners.php"
    );
  }

  updatePartnerStatus(id, status) {
    return this.http.post<Response>(
      environment.apiUrl + "handers/partners/changePartnerStatus.php", {
      id, status
    }
    );
  }

  deletePartner(id) {
    return this.http.put<Response>(
      environment.apiUrl + "handers/partners/deletePartner.php", {
      id
    }
    );
  }
}