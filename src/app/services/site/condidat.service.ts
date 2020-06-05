import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Formation } from '../../classes/formation';
import { environment } from 'src/environments/environment';

interface Response {
  success: boolean,
  message: string
}

@Injectable({
  providedIn: 'root'
})
export class CondidatService {

  constructor(
    private http: HttpClient
  ) { }

  addCondidat(
    uploadData,
    first_name,
    last_name,
    date,
    email,
    selectedFormation,
    dial_code,
    country_code,
    number,
  ) {
    return this.http.put<Response>(
      environment.apiUrl + "handers/condidat/addCondidat.php",
      {
        uploadData,
        first_name,
        last_name,
        date,
        email,
        selectedFormation,
        dial_code,
        country_code,
        number,
      }
    );
  }
}
