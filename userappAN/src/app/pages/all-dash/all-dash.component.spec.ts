import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AllDashComponent } from './all-dash.component';

describe('AllDashComponent', () => {
  let component: AllDashComponent;
  let fixture: ComponentFixture<AllDashComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [AllDashComponent]
    });
    fixture = TestBed.createComponent(AllDashComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
