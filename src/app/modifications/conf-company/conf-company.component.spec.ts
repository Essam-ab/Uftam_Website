import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ConfCompanyComponent } from './conf-company.component';

describe('ConfCompanyComponent', () => {
  let component: ConfCompanyComponent;
  let fixture: ComponentFixture<ConfCompanyComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ConfCompanyComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ConfCompanyComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
