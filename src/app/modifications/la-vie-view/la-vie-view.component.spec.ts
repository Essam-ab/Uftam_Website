import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { LaVieViewComponent } from './la-vie-view.component';

describe('LaVieViewComponent', () => {
  let component: LaVieViewComponent;
  let fixture: ComponentFixture<LaVieViewComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ LaVieViewComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(LaVieViewComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
