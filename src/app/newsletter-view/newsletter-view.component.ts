import { Component, OnInit } from '@angular/core';
import { FormationService } from '../services/dashboard/formation.service';
import { Formation } from '../classes/formation';
import { LocalStorageService } from '../services/dashboard/local-storage.service';
import Swal from 'sweetalert2';
import { environment } from 'src/environments/environment';
import { SiteService } from '../services/site/site.service';

@Component({
  selector: 'app-newsletter-view',
  templateUrl: './newsletter-view.component.html',
  styleUrls: ['./newsletter-view.component.css']
})
export class NewsletterViewComponent implements OnInit {

  constructor(
    private _formation: FormationService,
    private c_foramtion: Formation,
    private _localStorage: LocalStorageService,
    private _site: SiteService
  ) { }

  newsletters: Formation[];
  noSubscribers: boolean = false;
  apiUrl: any;

  ngOnInit() {
    this.apiUrl = environment.apiUrl;
    this._site.fetchSubscribers().subscribe(
      (data: Formation[]) => {
        this.newsletters = data;
        if (data.length <= 0)
          this.noSubscribers = true;

      },
      error => {
        console.log("there has been an error trying to get all formaions!");
      }
    )
  }

  item_id = 0;

  storeItem(e) {
    var item_id = e.target.getAttribute("id");
    this.item_id = item_id;
    if (localStorage.getItem('selected_formation') == null) {
      this._localStorage.addItem('selected_formation', item_id);
    } else {
      this._localStorage.setItem('selected_formation', item_id);
    }
  }
}
