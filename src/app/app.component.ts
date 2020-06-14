import { Component, OnInit } from '@angular/core';
import { Router, RouterOutlet, ActivatedRoute } from '@angular/router';
import { fader, slider, transformer, stepper, slideInAnimation } from './classes/route-animation';
import { Location } from '@angular/common';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
  animations: [
    //fader,
    //slider,
    //slideInAnimation,
    // transformer,
    //stepper
  ]
})
export class AppComponent {
  title = 'UFTAM';
  constructor(
    private _Router: Router,
    private _Location: Location,
    private _ActivatedRoute: ActivatedRoute
  ) { }

  isInternal: Boolean = false;
  supportedUrls = [
    'uftam_contact',
    'uftam_vie',
    'uftam_partners',
    'uftam_about',
    'uftam_actuality',
    'uftam_article',
    'uftam_article/:id',
    'uftam_admission',
    'uftam_master/:id/master',
    'uftam_license/:id/license'
  ];

  ngOnInit() {
  }

  onActivate(event) {
    window.scroll(0, 0);
  }

  prepareRoute(outlet: RouterOutlet) {
    return outlet && outlet.activatedRouteData && outlet.activatedRouteData['animation'];
  }
}
