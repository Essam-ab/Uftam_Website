import { Component, OnInit } from '@angular/core';
import { LocalStorageService } from '../services/dashboard/local-storage.service';
import { Router } from '@angular/router';
import { FormationService } from '../services/dashboard/formation.service';
import { Formation } from '../classes/formation';
import Swal from 'sweetalert2'

@Component({
  selector: 'app-edit-type-formation',
  templateUrl: './edit-type-formation.component.html',
  styleUrls: ['./edit-type-formation.component.css']
})
export class EditTypeFormationComponent implements OnInit {

  constructor(
    private _localstorage: LocalStorageService,
    private router: Router,
    private _formation: FormationService
  ) { }

  type: Formation[];
  id: any;
  ngOnInit() {
    this.id = this._localstorage.getItem("selected_type");
    if (this._localstorage.getItem("selected_type") == null) {
      this.router.navigateByUrl('/admin/typeFormationView');
    }
    this._formation.getTypeFormation(this.id).subscribe(
      (data: Formation[]) => {
        this.type = data;
      }
    )
  }


  updateTypeFormation(e) {
    let target = e.target;
    let type = target.querySelector('#typeFormation').value;

    this._formation.updateTypeFormation(this.id, type).subscribe(
      data => {
        console.log(data.message);
        if (data.success) {
          Swal.fire(
            'Mise à jour Terminé!',
            '',
            'success'
          )
          this.router.navigateByUrl("/admin/typeFormationView");
        } else
          Swal.fire(
            'Oops!',
            'An error accured while updating type formation!',
            'error'
          )
      }
    )
  }

}
