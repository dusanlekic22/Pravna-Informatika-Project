import { Component, OnInit } from '@angular/core';
import { waitForAsync } from '@angular/core/testing';
import { RbrService } from 'src/app/services/rbr.service';

@Component({
  selector: 'app-rbr',
  templateUrl: './rbr.component.html',
  styleUrls: ['./rbr.component.css'],
})
export class RbrComponent implements OnInit {
  name: string = '';
  defendant: string = '';
  fishHasList = [
    { label: 'regularnu vrednost', value: 'regular_worth' },
    { label: 'visu biolosku vrednost', value: 'greater_biological_worth' },
  ];
  fishHas: string = '';
  catchesInList = [
    { label: 'odobrenim vodama', value: 'hunting_regulated_waters' },
    { label: 'zabranjenim vodama', value: 'hunting_banned_waters' },
  ];
  catchesIn: string = '';
  catchesDuringList = [
    { label: 'u odobrenom periodu', value: 'hunting_regulated_period' },
    { label: 'u zabranjenom periodu', value: 'hunting_regulated_period' },
  ];
  catchesDuring: string = '';
  usesList = [
    { label: 'odobreno sredstvo', value: 'adequate_tool' },
    { label: 'sredstvo za omamljivanje', value: 'stun_agent' },
    { label: 'struju', value: 'electrical_current' },
    { label: 'eksplozive', value: 'explosives' },
  ];
  uses: string = '';
  destroysFishList = [
    { label: 'da', value: 'yes' },
    { label: 'ne', value: 'no' },
  ];
  destroysFish: string = '';
  causesList = [
    { label: 'veliku stetu', value: 'mass_destruction' },
    { label: 'stetu ka reprodukciji', value: 'harm_to_reproduction' },
    { label: 'manju stetu', value: 'no_harm' },
  ];
  causes: string = '';
  fishNumber: number = 0;
  judgement!: string;
  loading = false;

  constructor(private rbrService: RbrService) {}

  ngOnInit(): void {}

  getJudgement() {
    this.rbrService
      .getJudgement({
        name: this.name,
        defendant: this.defendant,
        fishHas: this.fishHas,
        catchesIn: this.catchesIn,
        catchesDuring: this.catchesDuring,
        uses: this.uses,
        destroysFish: this.destroysFish,
        causes: this.causes,
        fishNumber: this.fishNumber,
      })
      .subscribe(
        (data) => {
          this.judgement = data;
          console.log(data);
        },
        (error) => {
          console.log(error.error);
        }
      );
  }
}
