import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FormationDetailsViewComponent } from './formation-details-view.component';

describe('FormationDetailsViewComponent', () => {
  let component: FormationDetailsViewComponent;
  let fixture: ComponentFixture<FormationDetailsViewComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FormationDetailsViewComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FormationDetailsViewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
