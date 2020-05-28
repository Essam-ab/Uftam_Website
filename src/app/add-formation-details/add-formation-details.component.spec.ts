import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AddFormationDetailsComponent } from './add-formation-details.component';

describe('AddFormationDetailsComponent', () => {
  let component: AddFormationDetailsComponent;
  let fixture: ComponentFixture<AddFormationDetailsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AddFormationDetailsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AddFormationDetailsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
