import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FormationNotificationComponent } from './formation-notification.component';

describe('FormationNotificationComponent', () => {
  let component: FormationNotificationComponent;
  let fixture: ComponentFixture<FormationNotificationComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FormationNotificationComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FormationNotificationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
