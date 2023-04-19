import { TestBed } from '@angular/core/testing';

import { CbrService } from './cbr.service';

describe('CbrService', () => {
  let service: CbrService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(CbrService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
