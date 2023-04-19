import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RbrComponent } from './rbr.component';

describe('RbrComponent', () => {
  let component: RbrComponent;
  let fixture: ComponentFixture<RbrComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ RbrComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(RbrComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
