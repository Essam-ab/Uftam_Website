import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Formation } from '../../classes/formation';
import { environment } from 'src/environments/environment';

interface Response {
  success: boolean,
  message: string
}

@Injectable({
  providedIn: 'root'
})

export class FormationService {

  constructor(
    private http: HttpClient
  ) { }

  /*================= Formation ================= */
  displayFormationDetails_License(id) {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/formations/displayFormationDetails_License.php?id=" + id
    );
  }

  displayFormationDetails_Master(id) {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/formations/displayFormationDetails_Master.php?id=" + id
    );
  }

  setFormationDetails(id, niveau, prerequis, duration, regime, mod_admission, enjeux, program, debouche, public_acceuil) {
    return this.http.post<Response>(
      environment.apiUrl + "handers/formations/updateFormationDetails.php", {
      id,
      niveau,
      prerequis,
      duration,
      regime,
      mod_admission,
      enjeux,
      program,
      debouche,
      public_acceuil
    }
    );
  }

  displayFormations() {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/formations/displayFormations.php"
    );
  }

  updateCreatedFormation(lib, pres, desc, type, id) {
    return this.http.post<Response>(environment.apiUrl + "handers/formations/updateFormationCreated.php", {
      lib,
      pres,
      desc,
      type,
      id
    }
    );
  }

  addTypeFormation(type) {
    return this.http.post<Response>(
      environment.apiUrl + "handers/formations/addTypeFormation.php",
      {
        type
      }
    );
  }

  addFormation(lib, pres, desc, type) {
    return this.http.post<Response>(
      environment.apiUrl + "handers/formations/addFormation.php",
      {
        lib, pres, desc, type
      }
    );
  }

  getAllFormations() {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/formations/getAllFormations.php"
    );
  }

  getAllFormationTypes() {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/formations/getAllFormationTypes.php"
    );
  }

  /*================= edit formation and type ================= */
  getTypeFormation(id) {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/formations/getFormationType.php?id=" + id
    );
  }

  updateTypeFormation(id, lib) {
    return this.http.post<Response>(
      environment.apiUrl + "handers/formations/updateTypeFormation.php", {
      id,
      lib
    }
    );
  }

  updateTypeFormationStatus(id, status) {
    return this.http.post<Response>(
      environment.apiUrl + "handers/formations/changeTypeFormationStatus.php", {
      id, status
    }
    );
  }

  deleteTypeFormation(id) {
    return this.http.put<Response>(
      environment.apiUrl + "handers/formations/deleteTypeFormation.php", {
      id
    }
    );
  }

  getFormation(id) {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/formations/getFormation.php?id=" + id
    );
  }

  updateFormation(id, lib, pres, desc, type) {
    return this.http.post<Response>(
      environment.apiUrl + "handers/formations/updateFormation.php", {
      id, lib, pres, desc, type
    }
    );
  }

  updateFormationStatus(id, status) {
    return this.http.post<Response>(
      environment.apiUrl + "handers/formations/changeFormationStatus.php", {
      id, status
    }
    );
  }

  deleteFormation(id) {
    return this.http.put<Response>(
      environment.apiUrl + "handers/formations/deleteFormation.php", {
      id
    }
    );
  }

  /*================= Event ================= */

  setEventDetails(id, content) {
    return this.http.post<Response>(
      environment.apiUrl + "handers/events/updateEventDetails.php", {
      id,
      content
    }
    );
  }

  getArticleDetails(id) {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/events/getArticleDetails.php?id=" + id
    );
  }

  getArticle(id) {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/events/getArticle.php?id=" + id
    );
  }


  updateCreatedEvent(lib, date, desc, type, id) {
    return this.http.post<Response>(environment.apiUrl + "handers/events/updateEventCreated.php", {
      lib,
      date,
      desc,
      type,
      id
    }
    );
  }

  displayFirstEvents() {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/events/displayFirstEvents.php"
    );
  }

  displaySecondEvents() {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/events/displaySecondEvents.php"
    );
  }

  displayThirdEvents() {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/events/displayThirdEvents.php"
    );
  }

  addTypeEvent(type) {
    return this.http.post<Response>(
      environment.apiUrl + "handers/events/addTypeEvent.php",
      {
        type
      }
    );
  }

  addEvent(lib, date, desc, type) {
    return this.http.post<Response>(
      environment.apiUrl + "handers/events/addEvent.php",
      {
        lib, date, desc, type
      }
    );
  }

  getAllEvents() {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/events/getAllEvents.php"
    );
  }

  getAllEventTypes() {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/events/getAllEventTypes.php"
    );
  }

  /*================= edit event and type ================= */
  getTypeEvent(id) {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/events/getEventType.php?id=" + id
    );
  }

  updateTypeEvent(id, lib) {
    return this.http.post<Response>(
      environment.apiUrl + "handers/events/updateTypeEvent.php", {
      id,
      lib
    }
    );
  }

  updateTypeEventStatus(id, status) {
    return this.http.post<Response>(
      environment.apiUrl + "handers/events/changeTypeEventStatus.php", {
      id, status
    }
    );
  }

  deleteTypeEvent(id) {
    return this.http.put<Response>(
      environment.apiUrl + "handers/events/deleteTypeEvent.php", {
      id
    }
    );
  }

  getEvent(id) {
    return this.http.get<Formation[]>(
      environment.apiUrl + "handers/events/getEvent.php?id=" + id
    );
  }

  updateEvent(id, lib, date, desc, type) {
    return this.http.post<Response>(
      environment.apiUrl + "handers/events/updateEvent.php", {
      id, lib, date, desc, type
    }
    );
  }

  updateEventStatus(id, status) {
    return this.http.post<Response>(
      environment.apiUrl + "handers/events/changeEventStatus.php", {
      id, status
    }
    );
  }

  deleteEvent(id) {
    return this.http.put<Response>(
      environment.apiUrl + "handers/events/deleteEvent.php", {
      id
    }
    );
  }

}
