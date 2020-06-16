import { TestBed } from '@angular/core/testing';

import { StudentExpService } from './student-exp.service';

describe('StudentExpService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: StudentExpService = TestBed.get(StudentExpService);
    expect(service).toBeTruthy();
  });
});
