import { Injectable } from '@angular/core';
import { Observable, throwError } from 'rxjs';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { Formation } from 'src/app/classes/formation';
//import { RequestOptions, URLSearchParams, Headers } from '@angular/http';
import { catchError, tap } from 'rxjs/operators';
import { error } from '@angular/compiler/src/util';

interface Response {
  success: boolean,
  message: string
}

interface filter {
  data: string
}

@Injectable({
  providedIn: 'root'
})
export class SiteService {

  constructor(
    private formation: Formation,
    private http: HttpClient
  ) { }

  subscribeToNewsletter(email) {
    return this.http.post<Response>(
      environment.apiUrl + "handers/newsletter.hand.php", {
      email
    }
    );
  }

  fetchSubscribers() {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/fetchNewsletter.hand.php"
    );
  }

  filter(data, hint) {
    return this.http.post<Formation[]>(
      environment.apiUrl + "handers/filter.hand.php", {
      data,
      hint
    }
    );
  }

  endpoint: string = "";
  sendMail(name, mail_to, message, mail_from, subject) {
    return this.http.post(
      environment.apiUrl + "handers/sendMail.hand.php", {
      name,
      mail_to,
      message,
      mail_from,
      subject
    }
    ).pipe(
      tap(
        message => console.log(message)
      )
    );
  }
}
