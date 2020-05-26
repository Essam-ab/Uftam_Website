import { Component, OnInit } from '@angular/core';
import { HomeComponent } from '../../home/home.component';
import { UftamComponent } from '../../internal-pages/uftam/uftam.component';
import { FormationComponent } from '../../internal-pages/formation/formation.component';
import { ArticleComponent } from '../../internal-pages/article/article.component';
import { ContactComponent } from '../../internal-pages/contact/contact.component';
import { VieComponent } from '../../internal-pages/vie/vie.component';
import { PartnersComponent } from '../../internal-pages/partners/partners.component';
import { ActualityComponent } from '../../internal-pages/actuality/actuality.component';
import { AdmissionComponent } from '../../internal-pages/admission/admission.component';
import { environment } from 'src/environments/environment';
@Component({
  selector: 'app-internal-nav',
  templateUrl: './internal-nav.component.html',
  styleUrls: ['./internal-nav.component.css']
})

export class InternalNavComponent implements OnInit {

  constructor(
    private c_home: HomeComponent,
    private c_uftam: UftamComponent,
    private c_formation: FormationComponent,
    private c_article: ArticleComponent,
    private c_contact: ContactComponent,
    private c_vie: VieComponent,
    private c_partner: PartnersComponent,
    private c_actuality: ActualityComponent,
    private c_admission: AdmissionComponent
  ) { }
  //[ngClass]="{'message': info.priority<10}"

  // activity: Object;
  ngOnInit() {
    // this.activity[
    //   this.c_home.home_active,
    //   this.c_uftam.uftam_active
    // formation: this.c_formation. ,
    //   article: this.c_article. ,
    //     contact: this.c_contact. ,
    //       vie: this.c_vie. ,
    //         partner: this.c_partner. ,
    //           actuality: this.c_actuality. ,
    //             admission: this.c_admission.
    // ]
  }

  toggleActive(e) {
    console.log('toggled')
    const target = e.target;
    document.querySelector('[name="nav-item"]').classList.remove('active');
    target.classList.toggle('active');
    // if (target.classList.contains('active'))

  }

}
