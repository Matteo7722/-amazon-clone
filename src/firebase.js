import firebase from "firebase/compat/app";
import "firebase/compat/auth";

const firebaseConfig = {
  apiKey: "AIzaSyCjgutjF6rQV6m8oAvz1XylQZrb0GkG7BY",
  authDomain: "clone-d2edc.firebaseapp.com",
  projectId: "clone-d2edc",
  storageBucket: "clone-d2edc.firebasestorage.app",
  messagingSenderId: "1050490917900",
  appId: "1:1050490917900:web:1a8c1becc63724a4810a29",
  measurementId: "G-7RYBBG9DSF"
};

const app = firebase.initializeApp(firebaseConfig);
const auth = app.auth();

export { auth };
