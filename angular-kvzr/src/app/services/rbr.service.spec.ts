import { TestBed } from '@angular/core/testing';

import { RbrService } from './rbr.service';

describe('RbrService', () => {
  let service: RbrService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(RbrService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
