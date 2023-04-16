// This file can be replaced during build by using the `fileReplacements` array.
// `ng build` replaces `environment.ts` with `environment.prod.ts`.
// The list of file replacements can be found in `angular.json`.

export const environment = {
  production: false,
  apiUrl: 'http://localhost:8080',
};

// Your web app's Firebase configuration
export const firebaseConfig = {
  apiKey: 'AIzaSyDAaBZHZHTEN6lGm1CT9DrgWRcXur4vwcA',
  authDomain: 'vue-http-demo-ee340.firebaseapp.com',
  databaseURL:
    'https://vue-http-demo-ee340-default-rtdb.europe-west1.firebasedatabase.app',
  projectId: 'vue-http-demo-ee340',
  storageBucket: 'vue-http-demo-ee340.appspot.com',
  messagingSenderId: '1057486293412',
  appId: '1:1057486293412:web:a06d2993c940e9fd2d1931',
};

/*
 * For easier debugging in development mode, you can import the following file
 * to ignore zone related error stack frames such as `zone.run`, `zoneDelegate.invokeTask`.
 *
 * This import should be commented out in production mode because it will have a negative impact
 * on performance if an error is thrown.
 */
// import 'zone.js/plugins/zone-error';  // Included with Angular CLI.
