import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { StudentExpViewComponent } from './student-exp-view.component';

describe('StudentExpViewComponent', () => {
  let component: StudentExpViewComponent;
  let fixture: ComponentFixture<StudentExpViewComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ StudentExpViewComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(StudentExpViewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
