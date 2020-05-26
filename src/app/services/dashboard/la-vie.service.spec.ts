import { TestBed } from '@angular/core/testing';

import { LaVieService } from './la-vie.service';

describe('LaVieService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: LaVieService = TestBed.get(LaVieService);
    expect(service).toBeTruthy();
  });
});
