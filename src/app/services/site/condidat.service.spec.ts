import { TestBed } from '@angular/core/testing';

import { CondidatService } from './condidat.service';

describe('CondidatService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: CondidatService = TestBed.get(CondidatService);
    expect(service).toBeTruthy();
  });
});
