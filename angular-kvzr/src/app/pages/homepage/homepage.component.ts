import { Component, OnInit } from '@angular/core';
import { DocsService } from 'src/app/services/docs.service';
import { environment } from 'src/environments/environment';

@Component({
  selector: 'app-homepage',
  templateUrl: './homepage.component.html',
  styleUrls: ['./homepage.component.css']
})
export class HomepageComponent implements OnInit {

  url = environment.apiUrl;
  laws: string[] = [];
  judgements: string[] = [];

  constructor(public docsService:DocsService) { }

  ngOnInit(): void {
    this.getLaws();
    this.getJudgements();
  }
  
  downloadDoc(docName: string) {
    this.docsService.downloadDoc(docName).subscribe(
      (response) => {
        console.log(response);
        const blob = new Blob([response], { type: 'application/pdf' });
        const url = window.URL.createObjectURL(blob);
        window.open(url);
      },
      (error) => {
        console.log(error);
      }
    );
  } 

  getLaws(){
    this.docsService.getLaws().subscribe(
      (response) => {
        this.laws = response
      }
    );
  }

  getJudgements(){
    this.docsService.getJudgements().subscribe(
      (response) => {
        this.judgements = response
      }
    );
  }

}
