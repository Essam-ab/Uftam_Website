import { Component, OnInit } from '@angular/core';
import * as $ from 'jquery';
import { StudentExpService } from 'src/app/services/dashboard/student-exp.service';
import { HttpClient } from '@angular/common/http';
import { LocalStorageService } from 'src/app/services/dashboard/local-storage.service';
// import Swal from 'sweetalert2/dist/sweetalert2.js';
import Swal from 'sweetalert2'
import { Router } from '@angular/router';

interface Response {
  success: boolean,
  message: string,
  id: any
}


@Component({
  selector: 'app-student-exp',
  templateUrl: './student-exp.component.html',
  styleUrls: ['./student-exp.component.css']
})
export class StudentExpComponent implements OnInit {

  constructor(
    private _studentExp: StudentExpService,
    private http: HttpClient,
    private _store: LocalStorageService,
    private router: Router
  ) { }

  ngOnInit() {
  }

  uploadedData: FormData;
  selectedFile: File;

  addStudentExp(e) {
    const expName = e.target.querySelector("#expName").value;
    const expDescription = e.target.querySelector("#expDescription").value;
    if (expName == "" && expDescription == "") {
      Swal.fire(
        'Error!',
        'SVP! remplissez le formulaire.',
        'error'
      )
    }
    else if (expName == "") {
      Swal.fire(
        'Alert!',
        'Veuillez remplir le champ nom!',
        'warning'
      )
    } else if (expDescription == "") {
      Swal.fire(
        'Alert!',
        'Veuillez remplir le champ description!',
        'warning'
      )
    } else {
      this._studentExp.addStudentExp(expName, expDescription).subscribe(
        data => {
          if (!data.success) {
            Swal.fire(
              'Error!',
              "Erreur inconnue! Essayez d'actualiser la page ou contactez l'administrateur.",
              'error'
            )
          } else {
            Swal.fire(
              'Terminé!',
              'Vie Étudiant a été ajouté!',
              'success'
            )
            this.router.navigateByUrl("/admin/modification/studentExpView");
          }
        }
      )
    }
  }

}
