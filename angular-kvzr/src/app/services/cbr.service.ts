import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, throwError } from 'rxjs';
import { catchError } from 'rxjs/operators';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class CbrService {

  private cbrUrl = `${environment.apiUrl}/similarity`;

  constructor(private http: HttpClient) {}

  getCases(cbrCase:any): Observable<any> {
    return this.http
      .post<any>(`${this.cbrUrl}` + '/case', cbrCase)
      .pipe(catchError(this.handleError));
  } 

  saveCase(cbrCase:any): Observable<any> {
    return this.http
      .post<any>(`${this.cbrUrl}` + '/case/save', cbrCase)
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
