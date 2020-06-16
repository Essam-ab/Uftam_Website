import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { EventViewActulityComponent } from './event-view-actulity.component';

describe('EventViewActulityComponent', () => {
  let component: EventViewActulityComponent;
  let fixture: ComponentFixture<EventViewActulityComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ EventViewActulityComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(EventViewActulityComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
