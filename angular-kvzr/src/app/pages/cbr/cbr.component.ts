import { Component, OnInit } from '@angular/core';
import { CbrService } from 'src/app/services/cbr.service';

@Component({
  selector: 'app-cbr',
  templateUrl: './cbr.component.html',
  styleUrls: ['./cbr.component.css']
})
export class CbrComponent implements OnInit {
  articleZOSRA: string = '';
  paragraphZOSRA: string = '';
  pointZOSRA: string = '';
  articleKZ: string = '';
  paragraphKZ: string = '';
  pointKZ: string = '';
  fishNumber: number = 0;
  articleRegulation: string = '';
  paragraphRegulation: string = '';
  pointRegulation: string = '';
  regulations: string[] = [];
  cbrCases: any[] = [];
  judgement!: string;

  constructor(private cbrService: CbrService) {}

  ngOnInit(): void {}

  addRegulation() {
    let regulationString = 'čl.' + this.articleRegulation;
    if (this.paragraphRegulation != '') {
      regulationString += ' st.' + this.paragraphRegulation;
    }
    if (this.pointRegulation != '') {
      regulationString += ' tač.' + this.pointRegulation;
    }
    this.regulations.push(regulationString);
  }

  getJudgement() {
    let cbrCase = {
      krivicnoDeloZOSRA:
        this.articleZOSRA + this.paragraphZOSRA + this.pointZOSRA,
      krivicnoDeloKZ: this.articleKZ + this.paragraphKZ + this.pointKZ,
      brojRiba: this.fishNumber,
      primenjeniPropisi: this.regulations,
    };
    this.cbrService
      .getCases(cbrCase)
      .subscribe(
        (data) => (
          (this.cbrCases = data.caseDescriptionDTOs),
          (this.judgement = data.judgement)
        )
      );
  }

  saveCase() {
    let cbrCase = {
      krivicnoDeloZOSRA:
        this.articleZOSRA + this.paragraphZOSRA + this.pointZOSRA,
      krivicnoDeloKZ: this.articleKZ + this.paragraphKZ + this.pointKZ,
      brojRiba: this.fishNumber,
      primenjeniPropisi: this.regulations,
      presuda: this.judgement,
    };
    this.cbrService.saveCase(cbrCase).subscribe((data) => console.log(data));
  }
}
