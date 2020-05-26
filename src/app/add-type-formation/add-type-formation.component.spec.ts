import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AddTypeFormationComponent } from './add-type-formation.component';

describe('AddTypeFormationComponent', () => {
  let component: AddTypeFormationComponent;
  let fixture: ComponentFixture<AddTypeFormationComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AddTypeFormationComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AddTypeFormationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
