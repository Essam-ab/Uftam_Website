import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { UftamComponent } from './uftam.component';

describe('UftamComponent', () => {
  let component: UftamComponent;
  let fixture: ComponentFixture<UftamComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ UftamComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(UftamComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
