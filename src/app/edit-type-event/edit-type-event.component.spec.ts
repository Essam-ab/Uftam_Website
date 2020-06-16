import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { EditTypeEventComponent } from './edit-type-event.component';

describe('EditTypeEventComponent', () => {
  let component: EditTypeEventComponent;
  let fixture: ComponentFixture<EditTypeEventComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EditTypeEventComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(EditTypeEventComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
