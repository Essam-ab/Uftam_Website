import { Component, OnInit, TemplateRef, ViewEncapsulation, ElementRef, HostListener } from '@angular/core';
import * as $ from "jquery";
import Swal from 'sweetalert2';
import { FormationService } from '../services/dashboard/formation.service';
import { Formation } from '../classes/formation';
import { PartnerService } from '../services/dashboard/partner.service';
import { CompanyService } from '../services/dashboard/company.service';
import { StudentExpService } from '../services/dashboard/student-exp.service';
import { LaVieService } from '../services/dashboard/la-vie.service';
import { environment } from 'src/environments/environment';
import { ActivatedRoute } from '@angular/router';
import { BsModalService, BsModalRef } from 'ngx-bootstrap/modal';
import { SiteService } from '../services/site/site.service';
import './script.js';

@Component({
  selector: 'app-nav',
  templateUrl: './nav.component.html',
  styleUrls: ['./nav.component.css'],
  encapsulation: ViewEncapsulation.None
})
export class NavComponent implements OnInit {

  constructor(
    private _formation: FormationService,
    private formation: Formation,
    private _ActivatedRoute: ActivatedRoute,
    private modalService: BsModalService,
    private _site: SiteService
  ) { }

  formations: Formation[];
  license: Formation[];
  master: Formation[];
  apiUrl: any;

  ngOnInit() {
    this.apiUrl = environment.apiUrl;
    this._formation.displayFormations().subscribe(
      (data: Formation[]) => {
        this.formations = data;
        var x = [], y = [];
        var j = 0, k = 0;
        for (let i = 0; i < this.formations.length; i++) {
          if (data[i]['type'] == "Masters") {
            x[j++] = data[i];
          } else if (data[i]['type'] == "Licence") {
            y[k++] = data[i];
          }
        }
        this.license = y;
        this.master = x;
      },
      error => {
        console.log("there has been an error trying to get all formaions!");
      }
    )
  }

  modalRef: BsModalRef;
  documents: Formation[];
  searchEngine(search: TemplateRef<any>) {
    this._formation.getAllDocuments().subscribe(
      data => {
        this.documents = data;
      }
    )
    this.modalRef = this.modalService.show(
      search,
      Object.assign({}, { class: 'gray modal-lg' })
    );
  }

  fieldvalue: string = "";
  selectedHint: string = "formation";
  searchData: Formation[];
  triggerEngine(data) {
    var hint = document.querySelector('#selectedHint');
    if (hint.selectedIndex == 0) {
      this.selectedHint = "formation";
    } else
      this.selectedHint = "event";

    const selector = document.querySelector('.search_result');
    this._site.filter(data, this.selectedHint).subscribe(
      (data) => {
        this.searchData = data;
        if (data.length == 0) {
          selector.innerHTML = "Pas de  resultat!";
        } else {
          selector.innerHTML = "";
          let last_lib = "";
          for (let i = 0; i < data.length; i++) {
            if (this.selectedHint == "formation") {
              if (last_lib != data[i]['for_lib']) {
                last_lib = data[i]['for_lib'];
                selector.innerHTML += ' <div aria_name="formation" aria-type="' + data[i]['for_type'] + '" aria-id="' + data[i]['for_id'] + '" class="data_row"><div class="data_header"><img src="' + this.apiUrl + 'handers/formations/uploads/' + data[i]['for_img']
                  + '" alt="img"></div><div class="data_body"><h4>' + data[i]['for_lib'] + '</h4><p>"' + data[i]['for_description'] + '"</p></div></div>';
              }
            } else if (this.selectedHint == "event")
              selector.innerHTML += ' <div aria_name="event" aria-id="' + data[i]['eve_id'] + '" class="data_row"><div class="data_header"><img src="' + this.apiUrl + 'handers/events/uploads/' + data[i]['eve_img']
                + '" alt="img"></div><div class="data_body"><h4>' + data[i]['eve_lib'] + '</h4><p>"' + data[i]['eve_description'] + '"</p></div></div>';
            else {
              selector.innerHTML = "";
              break;
            }
          }
        }
      },
      error => {
        //
      }
    )
  }

}

