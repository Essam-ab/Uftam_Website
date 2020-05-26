import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Formation } from 'src/app/classes/formation';
import { environment } from 'src/environments/environment';

interface laVieResponse {
  success: boolean,
  message: string
}


@Injectable({
  providedIn: 'root'
})
export class LaVieService {

  constructor(
    private http: HttpClient
  ) { }

  updateVie(lib, description, id) {
    return this.http.post<laVieResponse>(environment.apiUrl + "handers/laVie/updateLaVie.php", {
      lib,
      description,
      id
    }
    );
  }

  getAllVie() {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/laVie/getAllLaVie.php"
    );
  }

  updateLaVieStatus(id, status) {
    return this.http.post<Response>(
      environment.apiUrl + "handers/LaVie/changeLaVieStatus.php", {
      id, status
    }
    );
  }

  deleteLaVie(id) {
    return this.http.put<Response>(
      environment.apiUrl + "handers/LaVie/deleteLaVie.php", {
      id
    }
    );
  }
}
