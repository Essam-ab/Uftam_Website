import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { LaVieComponent } from './la-vie.component';

describe('LaVieComponent', () => {
  let component: LaVieComponent;
  let fixture: ComponentFixture<LaVieComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ LaVieComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(LaVieComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
