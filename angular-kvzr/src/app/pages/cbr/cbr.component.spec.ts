import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CbrComponent } from './cbr.component';

describe('CbrComponent', () => {
  let component: CbrComponent;
  let fixture: ComponentFixture<CbrComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CbrComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CbrComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
