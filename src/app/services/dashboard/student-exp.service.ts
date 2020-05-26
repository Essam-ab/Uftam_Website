import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Formation } from 'src/app/classes/formation';
import { environment } from 'src/environments/environment';

interface StudentExpResponse {
  success: boolean,
  message: string
}

@Injectable({
  providedIn: 'root'
})
export class StudentExpService {

  constructor(
    private http: HttpClient
  ) { }

  addStudentExp(lib, description) {
    return this.http.post<StudentExpResponse>(environment.apiUrl + "handers/studentExp/addStudentExp.php", {
      lib,
      description
    }
    );
  }

  getAllStudentExp() {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/studentExp/getAllStudentExp.php"
    );
  }

  updateStudentExpStatus(id, status) {
    return this.http.post<Response>(
      environment.apiUrl + "handers/studentExp/changeStudentExpStatus.php", {
      id, status
    }
    );
  }

  deleteStudentExp(id) {
    return this.http.put<Response>(
      environment.apiUrl + "handers/studentExp/deleteStudentExp.php", {
      id
    }
    );
  }
}
