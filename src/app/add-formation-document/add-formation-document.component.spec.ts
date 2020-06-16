import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { AddFormationDocumentComponent } from './add-formation-document.component';

describe('AddFormationDocumentComponent', () => {
  let component: AddFormationDocumentComponent;
  let fixture: ComponentFixture<AddFormationDocumentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ AddFormationDocumentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(AddFormationDocumentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
