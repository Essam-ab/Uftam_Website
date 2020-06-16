import { Component, HostListener, ElementRef, Input } from '@angular/core';
import { ControlValueAccessor, NG_VALUE_ACCESSOR } from '@angular/forms';

@Component({
  selector: 'app-file-upload',
  templateUrl: './file-upload.component.html',
  providers: [
    {
      provide: NG_VALUE_ACCESSOR,
      useExisting: FileUploadComponent,
      multi: true
    }
  ],
  styleUrls: ['./file-upload.component.scss']
})
export class FileUploadComponent implements ControlValueAccessor {
  // tslint:disable-next-line: ban-types
  onChange: Function;
  public file: Array<any> | null = null;

  @HostListener('change', ['$event.target.files']) emitFiles(event: FileList) {
    const file = this.getList(event);

    this.onChange(file);
    this.file = file;
  }

  getList(item: FileList): Array<File> {
    return Array.from(item) as Array<File>;
  }

  constructor(private host: ElementRef<HTMLInputElement>) {
  }

  writeValue(value: null) {
    // clear file input
    this.host.nativeElement.value = '';
    this.file = null;
  }

  // tslint:disable-next-line: ban-types
  registerOnChange(fn: Function) {
    this.onChange = fn;

  }

  // tslint:disable-next-line: ban-types
  registerOnTouched(fn: Function) {

  }

}
