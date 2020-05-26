import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { StudentExpComponent } from './student-exp.component';

describe('StudentExpComponent', () => {
  let component: StudentExpComponent;
  let fixture: ComponentFixture<StudentExpComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ StudentExpComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(StudentExpComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
