import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { VieComponent } from './vie.component';

describe('VieComponent', () => {
  let component: VieComponent;
  let fixture: ComponentFixture<VieComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ VieComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(VieComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
