import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { UftamEventViewComponent } from './uftam-event-view.component';

describe('UftamEventViewComponent', () => {
  let component: UftamEventViewComponent;
  let fixture: ComponentFixture<UftamEventViewComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ UftamEventViewComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(UftamEventViewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
