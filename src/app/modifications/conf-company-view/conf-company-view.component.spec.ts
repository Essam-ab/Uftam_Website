import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ConfCompanyViewComponent } from './conf-company-view.component';

describe('ConfCompanyViewComponent', () => {
  let component: ConfCompanyViewComponent;
  let fixture: ComponentFixture<ConfCompanyViewComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ConfCompanyViewComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ConfCompanyViewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
