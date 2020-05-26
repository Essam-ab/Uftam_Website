import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DisableRowComponent } from './disable-row.component';

describe('DisableRowComponent', () => {
  let component: DisableRowComponent;
  let fixture: ComponentFixture<DisableRowComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DisableRowComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DisableRowComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
