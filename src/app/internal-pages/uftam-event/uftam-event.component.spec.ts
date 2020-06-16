import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { UftamEventComponent } from './uftam-event.component';

describe('UftamEventComponent', () => {
  let component: UftamEventComponent;
  let fixture: ComponentFixture<UftamEventComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ UftamEventComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(UftamEventComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
