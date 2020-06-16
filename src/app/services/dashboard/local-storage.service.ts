import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class LocalStorageService {

  constructor() { }

  addItem(item, value) {
    localStorage.setItem(item.toString(), JSON.stringify(value));
  }

  getItem(item) {
    return JSON.parse(localStorage.getItem(item));
  }

  setItem(item, value) {
    localStorage.setItem(item, value);
  }
}
