import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CondidatureViewComponent } from './condidature-view.component';

describe('CondidatureViewComponent', () => {
  let component: CondidatureViewComponent;
  let fixture: ComponentFixture<CondidatureViewComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CondidatureViewComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CondidatureViewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
