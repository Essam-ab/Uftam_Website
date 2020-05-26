import { Component, OnInit } from '@angular/core';
import * as $ from "jquery";

@Component({
  selector: 'app-flash-messages',
  templateUrl: './flash-messages.component.html',
  styleUrls: ['./flash-messages.component.css']
})
export class FlashMessagesComponent implements OnInit {

  constructor() { }

  ngOnInit() {
    $('#successAdded').hide();
    $('#phoneWrong').hide();
    $('#successMsg').hide();
    $('#errorMsg').hide();
    $('#successPassed').hide();
    $('#successSignup').hide();
    $('#incorrectCred').hide();
    $('#emailExist').hide();
    $('#usernameExist').hide();
    $('#errorCode').hide();
  }

}
