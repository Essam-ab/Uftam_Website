import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FormationTypeViewComponent } from './formation-type-view.component';

describe('FormationTypeViewComponent', () => {
  let component: FormationTypeViewComponent;
  let fixture: ComponentFixture<FormationTypeViewComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FormationTypeViewComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FormationTypeViewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
