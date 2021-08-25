import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';
import store from './redux/store';
import {Provider} from 'react-redux'
import 'bootstrap/dist/css/bootstrap.min.css';
import ReactStars from "react-rating-stars-component";
import { render } from "react-dom";
// import React from "react";


ReactDOM.render(


  
  <React.StrictMode>
   <Provider store={store}>
   <App />
     </Provider>
  </React.StrictMode>,
  document.getElementById('root')
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVit als(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
