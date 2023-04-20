import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, throwError } from 'rxjs';
import { catchError } from 'rxjs/operators';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root',
})
export class DocsService {
  private docsUrl = `${environment.apiUrl}/document`;

  constructor(private http: HttpClient) {}

  downloadDoc(docName: string): Observable<any> {
    return this.http
      .get<any>(`${this.docsUrl}` + '/download/' + docName)
      .pipe(catchError(this.handleError));
  }

  getLaws(): Observable<any> {
    return this.http
      .get<any>(`${this.docsUrl}` + '/laws')
      .pipe(catchError(this.handleError));
  }

  getXMLText(file: string): Observable<any> {
    return this.http
      .get<any>('assets/docs/' + file, { responseType: 'text' as 'json' })
      .pipe(catchError(this.handleError));
  }

  getJudgements(): Observable<any> {
    return this.http
      .get<any>(`${this.docsUrl}` + '/judgements')
      .pipe(catchError(this.handleError));
  }

  handleError(error: any) {
    let errorMessage = '';
    if (error.error instanceof ErrorEvent) {
      // Get client-side error
      errorMessage = error.error.message;
    } else {
      // Get server-side error
      errorMessage = `Error Code: ${error.status}\nMessage: ${error.message}`;
    }
    return throwError(() => {
      return errorMessage;
    });
  }
}
