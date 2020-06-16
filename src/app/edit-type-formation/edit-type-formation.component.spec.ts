import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { EditTypeFormationComponent } from './edit-type-formation.component';

describe('EditTypeFormationComponent', () => {
  let component: EditTypeFormationComponent;
  let fixture: ComponentFixture<EditTypeFormationComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EditTypeFormationComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(EditTypeFormationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
