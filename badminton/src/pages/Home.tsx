import { IonContent, IonHeader, IonPage, IonTitle, IonToolbar, IonButton } from '@ionic/react';
import React from 'react';
import { IonGrid, IonRow, IonCol} from '@ionic/react';
import './Home.css';
// import { Calendar } from '@ionic-native/calendar/ngx';
// constructor(private calendar: Calendar) { };


const Home: React.FC = () => {
  return (
    <IonPage>
      <IonHeader>
        <IonToolbar>
          <IonTitle>Ionic Blank</IonTitle>
        </IonToolbar>
      </IonHeader>
      <IonContent className="ion-padding">
        {/* The world is your oyster.
        <p>
          If you get lost, the{' '}
          <a target="_blank" rel="noopener noreferrer" href="https://ionicframework.com/docs/">
            docs
          </a>{' '}
          will be your guide.
        </p> */}
      <IonGrid className="ion-grid-padding">
          <IonRow className="ion-align-items-center">
            <IonCol>profile pic is here</IonCol>
            <IonCol><IonButton href="#" color="primary">Stats</IonButton> </IonCol>
            <IonCol><IonButton href="#" color="primary">Team</IonButton> </IonCol>
            <IonCol><IonButton href="#" color="primary">Overall</IonButton> </IonCol>
          </IonRow>
      </IonGrid>

      </IonContent>
    </IonPage>
  );
};
// this.calendar.createCalendar('MyCalendar').then(
//   (msg) => { console.log(msg); },
//   (err) => { console.log(err); }
// );

export default Home;
