// Import the functions you need from the SDKs you need

/* import { initializeApp } from "firebase/app"; */

// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries



//biblioteca do firebase
import firebase from 'firebase/compat/app';
//autenticação de email e senha
import 'firebase/compat/auth';
//trabalha com o banco de dados criado no firebase
import 'firebase/compat/database';

// Your web app's Firebase configuration
//Let (var) = valores variaveis
let firebaseConfig = {
  apiKey: "AIzaSyDHdET0fiPhV8i4kAbgdRAcGykvUsuN1YM",
  authDomain: "dbcinelist.firebaseapp.com",
  projectId: "dbcinelist",
  storageBucket: "dbcinelist.appspot.com",
  messagingSenderId: "856508044075",
  appId: "1:856508044075:web:f96c9d822f3aeed8c0eb6e"
};

// Initialize Firebase
/* const app = initializeApp(firebaseConfig); */

if (!firebase.apps.length) {
    // Initialize Firebase
     firebase.initializeApp(firebaseConfig);
    }

export default firebase;