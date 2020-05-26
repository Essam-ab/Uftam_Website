import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { RouterModule, Routes } from '@angular/router';
import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { NavComponent } from './nav/nav.component';

import { HttpClient, HttpClientModule } from '@angular/common/http';
import { ReactiveFormsModule } from '@angular/forms';
import { FormsModule } from '@angular/forms';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { AdminComponent } from './admin/admin.component';
import { AddFormationComponent } from './add-formation/add-formation.component';
import { AddTypeFormationComponent } from './add-type-formation/add-type-formation.component';
import { AddTypeEventComponent } from './add-type-event/add-type-event.component';
import { AddEventComponent } from './add-event/add-event.component';
import { AdminSideNavComponent } from './admin-side-nav/admin-side-nav.component';
import { AdminTopNavComponent } from './admin-top-nav/admin-top-nav.component';
import { FlashMessagesComponent } from './flash-messages/flash-messages.component';
import { Formation } from './classes/formation';
import { FormationViewComponent } from './formation-view/formation-view.component';
import { FormationTypeViewComponent } from './formation-type-view/formation-type-view.component';
import { EditTypeFormationComponent } from './edit-type-formation/edit-type-formation.component';
import { BsDatepickerModule } from 'ngx-bootstrap/datepicker';
import { EventTypeViewComponent } from './event-type-view/event-type-view.component';
import { EventViewComponent } from './event-view/event-view.component';
import { ModificationComponent } from './modifications/modification/modification.component';
import { PartenaireComponent } from './modifications/partenaire/partenaire.component';
import { ConfCompanyComponent } from './modifications/conf-company/conf-company.component';
import { LaVieComponent } from './modifications/la-vie/la-vie.component';
import { StudentExpComponent } from './modifications/student-exp/student-exp.component';
import { AddPartnerComponent } from './modifications/add-partner/add-partner.component';
import { ConfCompanyViewComponent } from './modifications/conf-company-view/conf-company-view.component';
import { LaVieViewComponent } from './modifications/la-vie-view/la-vie-view.component';
import { StudentExpViewComponent } from './modifications/student-exp-view/student-exp-view.component';
import { EditFormationComponent } from './edit-formation/edit-formation.component';
import { EditEventComponent } from './edit-event/edit-event.component';
import { EditTypeEventComponent } from './edit-type-event/edit-type-event.component';
import { DisableRowComponent } from './modifications/hidden/disable-row/disable-row.component';
import { DashboardHomeComponent } from './dashboard-home/dashboard-home.component';
import { environment } from 'src/environments/environment';
import { UftamComponent } from './internal-pages/uftam/uftam.component';
import { FormationComponent } from './internal-pages/formation/formation.component';
import { ArticleComponent } from './internal-pages/article/article.component';
import { ContactComponent } from './internal-pages/contact/contact.component';
import { VieComponent } from './internal-pages/vie/vie.component';
import { PartnersComponent } from './internal-pages/partners/partners.component';
import { ActualityComponent } from './internal-pages/actuality/actuality.component';
import { AdmissionComponent } from './internal-pages/admission/admission.component';
import { InternalNavComponent } from './internal-pages/internal-nav/internal-nav.component';
import { LicenseComponent } from './internal-pages/formation/license/license.component';
import { MasterComponent } from './internal-pages/formation/master/master.component';
import { CertificateComponent } from './internal-pages/formation/certificate/certificate.component';

export const routes: Routes = [
  { path: '', component: HomeComponent, pathMatch: 'full' },
  { path: '', redirectTo: 'home', pathMatch: 'full' },
  { path: 'home', component: HomeComponent },
  { path: 'dashboardHome', component: DashboardHomeComponent },
  { path: 'uftam_about', component: UftamComponent },
  {
    path: 'uftam_formation',
    component: FormationComponent,
    children: [
      { path: 'uftam_license', component: LicenseComponent, },
      { path: 'uftam_master', component: MasterComponent },
      { path: 'uftam_certificate', component: CertificateComponent },
    ]
  },
  { path: 'uftam_article', component: ArticleComponent },
  { path: 'uftam_contact', component: ContactComponent },
  { path: 'uftam_vie', component: VieComponent },
  { path: 'uftam_partners', component: PartnersComponent },
  { path: 'uftam_actuality', component: ActualityComponent },
  { path: 'uftam_admission', component: AdmissionComponent },
  {
    path: 'admin',
    component: AdminComponent,
    children: [
      { path: 'typeFormationView', component: FormationTypeViewComponent, },
      { path: 'formationView', component: FormationViewComponent },
      { path: 'editTypeFormation', component: EditTypeFormationComponent },
      { path: 'editFormation', component: EditFormationComponent },
      { path: 'addTypeFormation', component: AddTypeFormationComponent },
      { path: 'addFormation', component: AddFormationComponent },
      { path: 'addTypeEvent', component: AddTypeEventComponent },
      { path: 'addEvent', component: AddEventComponent },
      { path: 'typeEventView', component: EventTypeViewComponent, },
      { path: 'eventView', component: EventViewComponent },
      { path: 'editTypeEvent', component: EditTypeEventComponent },
      { path: 'editEvent', component: EditEventComponent },
      {
        path: 'modification',
        component: ModificationComponent,
        children: [
          { path: 'partners', component: PartenaireComponent },
          { path: 'addPartner', component: AddPartnerComponent },
          { path: 'addConfCompanies', component: ConfCompanyComponent },
          { path: 'confCompaniesView', component: ConfCompanyViewComponent },
          { path: 'addLaVie', component: LaVieComponent },
          { path: 'laVieView', component: LaVieViewComponent },
          { path: 'studentExp', component: StudentExpComponent },
          { path: 'studentExpView', component: StudentExpViewComponent }
        ]
      },
    ]
  },
]

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    NavComponent,
    AdminComponent,
    AddFormationComponent,
    AddTypeFormationComponent,
    AddTypeEventComponent,
    AddEventComponent,
    AdminSideNavComponent,
    AdminTopNavComponent,
    FlashMessagesComponent,
    FormationViewComponent,
    FormationTypeViewComponent,
    EditTypeFormationComponent,
    EventTypeViewComponent,
    EventViewComponent,
    ModificationComponent,
    PartenaireComponent,
    ConfCompanyComponent,
    LaVieComponent,
    StudentExpComponent,
    AddPartnerComponent,
    ConfCompanyViewComponent,
    LaVieViewComponent,
    StudentExpViewComponent,
    EditFormationComponent,
    EditEventComponent,
    EditTypeEventComponent,
    DisableRowComponent,
    DashboardHomeComponent,
    UftamComponent,
    FormationComponent,
    ArticleComponent,
    ContactComponent,
    VieComponent,
    PartnersComponent,
    ActualityComponent,
    AdmissionComponent,
    InternalNavComponent,
    LicenseComponent,
    MasterComponent,
    CertificateComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    BrowserAnimationsModule,
    RouterModule.forRoot(routes),
    BsDatepickerModule.forRoot()
  ],
  providers: [
    Formation,
    FormationTypeViewComponent,
    AdminComponent,
    DashboardHomeComponent,
    HomeComponent,
    UftamComponent,
    FormationComponent,
    ArticleComponent,
    ContactComponent,
    VieComponent,
    PartnersComponent,
    ActualityComponent,
    AdmissionComponent
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
