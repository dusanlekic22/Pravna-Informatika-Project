import { Component, OnInit } from '@angular/core';
import { CbrService } from 'src/app/services/cbr.service';

@Component({
  selector: 'app-cbr',
  templateUrl: './cbr.component.html',
  styleUrls: ['./cbr.component.css'],
})
export class CbrComponent implements OnInit {
  sud: string = '';
  poslovniBroj: string = '';
  sudija: string = '';
  tuzilac: string = '';
  okrivljenik: string = '';
  vrstaPresude: string = 'osudjujuca';
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
    if (this.articleZOSRA !== '') {
      this.articleZOSRA = 'čl.' + this.articleZOSRA;
    }
    if (this.paragraphZOSRA !== '') {
      this.paragraphZOSRA = ' st.' + this.paragraphZOSRA;
    }
    if (this.pointZOSRA !== '') {
      this.pointZOSRA = ' tač.' + this.pointZOSRA;
    }
    if (this.articleKZ !== '') {
      this.articleKZ = 'čl.' + this.articleKZ;
    }
    if (this.paragraphKZ !== '') {
      this.paragraphKZ = ' st.' + this.paragraphKZ;
    }
    if (this.pointKZ !== '') {
      this.pointKZ = ' tač.' + this.pointKZ;
    }

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
          this.cbrCases = data
        )
      );
  }

  saveCase(similarCase: any) {
    if (this.articleZOSRA !== '') {
      this.articleZOSRA = 'čl.' + this.articleZOSRA;
    }
    if (this.paragraphZOSRA !== '') {
      this.paragraphZOSRA = ' st.' + this.paragraphZOSRA;
    }
    if (this.pointZOSRA !== '') {
      this.pointZOSRA = ' tač.' + this.pointZOSRA;
    }
    if (this.articleKZ !== '') {
      this.articleKZ = 'čl.' + this.articleKZ;
    }
    if (this.paragraphKZ !== '') {
      this.paragraphKZ = ' st.' + this.paragraphKZ;
    }
    if (this.pointKZ !== '') {
      this.pointKZ = ' tač.' + this.pointKZ;
    }
    let cbrCase = {
      sud: this.sud,
      poslovniBroj: this.poslovniBroj,
      sudija: this.sudija,
      tuzilac: this.tuzilac,
      okrivljenik: this.okrivljenik,
      vrstaPresude: this.vrstaPresude,
      krivicnoDeloZOSRA:
        this.articleZOSRA + this.paragraphZOSRA + this.pointZOSRA,
      krivicnoDeloKZ: this.articleKZ + this.paragraphKZ + this.pointKZ,
      brojRiba: this.fishNumber,
      primenjeniPropisi: this.regulations,
      presuda: similarCase.presuda,
    };
    this.cbrService.saveCase(cbrCase).subscribe((data) => console.log(data));
  }
}
