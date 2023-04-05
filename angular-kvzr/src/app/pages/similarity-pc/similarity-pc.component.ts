import { SimilarityPCService } from './../../services/similarity-pc.service';
import {
  IPC,
  emptyPC,
  IPCDescription,
  emptyPCDescription,
} from './../../model/pc';
import { Component, OnInit } from '@angular/core';
import { ComponentService } from 'src/app/services/component.service';

@Component({
  selector: 'app-similarity-pc',
  templateUrl: './similarity-pc.component.html',
  styleUrls: ['./similarity-pc.component.css'],
})
export class SimilarityPCComponent implements OnInit {
  myPC: IPC = emptyPC;
  recommendedPCs: IPC[] = [];
  loading: boolean = false;
  cpuList: string[] = [];
  gpuList: string[] = [];
  ramList: string[] = [];
  storageList: string[] = [];
  motherboardList: string[] = [];

  constructor(private similarityService: SimilarityPCService,
    private componentService: ComponentService) {}

  ngOnInit(): void {
    this.loading = false;
    this.componentService
      .getComponent('Processor')
      .subscribe((data) => (this.cpuList = data));
    this.componentService
      .getComponent('GraphicsCard')
      .subscribe((data) => (this.gpuList = data));
    this.componentService
      .getComponent('Memory')
      .subscribe((data) => (this.ramList = data));
    this.componentService
      .getComponent('Storage')
      .subscribe((data) => (this.storageList = data));
    this.componentService
      .getComponent('Motherboard')
      .subscribe((data) => (this.motherboardList = data));
}

  search() {
    this.loading = true;
    this.similarityService.getSimilarityPCs(this.myPC).subscribe((pcs) => {
      this.loading = false;
      this.recommendedPCs = pcs;
    });
  }
}
