import { NgModule }      from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { RouterModule} from '@angular/router';
import { FormsModule } from '@angular/forms'; // mainly for banana in box two way data binding
import { HttpModule } from '@angular/http'; // along with import we are registering http service with angulars injector
// this auto work is done by HttpModule for us
import { AppComponent }  from './app.component';
import { DashboardComponent } from './dashboardComponent';
import { LoginComponent } from './LoginComponent';
import { HomeComponent } from './homeComponent';
import { RegistrationComponent } from './RegistrationComponent';

@NgModule({
  imports:      [ BrowserModule,
                  HttpModule,
                  FormsModule,
                  RouterModule.forRoot([
                    {path: '' , component: HomeComponent},
                    {path: 'dashboard', component: DashboardComponent},
                    {path: 'login', component: LoginComponent},
                    {path: 'register', component: RegistrationComponent},
                  ])
                ], // to available this module in our application
  declarations: [ AppComponent, DashboardComponent, LoginComponent, HomeComponent,RegistrationComponent],
  bootstrap:    [ AppComponent ]
})
export class AppModule { }
