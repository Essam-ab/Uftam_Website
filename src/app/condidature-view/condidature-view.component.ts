import { Component, OnInit } from '@angular/core';
import { FormationService } from '../services/dashboard/formation.service';
import { Formation } from '../classes/formation';
import { LocalStorageService } from '../services/dashboard/local-storage.service';
import Swal from 'sweetalert2';
import { environment } from 'src/environments/environment';
import { SiteService } from '../services/site/site.service';
import { CondidatService } from '../services/site/condidat.service';

@Component({
  selector: 'app-condidature-view',
  templateUrl: './condidature-view.component.html',
  styleUrls: ['./condidature-view.component.css']
})
export class CondidatureViewComponent implements OnInit {

  constructor(
    private _formation: FormationService,
    private c_foramtion: Formation,
    private _localStorage: LocalStorageService,
    private _site: SiteService,
    private _candidate: CondidatService
  ) { }

  candidates: Formation[];
  noCandidates: boolean = false;
  apiUrl: any;

  ngOnInit() {
    this.apiUrl = environment.apiUrl;
    this._candidate.getAllCandidates().subscribe(
      (data: Formation[]) => {
        this.candidates = data;
        if (data.length <= 0)
          this.noCandidates = true;
      },
      error => {
        this.noCandidates = true;
      }
    )
  }

  Expand(event) {

  }
}