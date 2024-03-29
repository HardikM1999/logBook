import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import { Drizzle, generateStore } from "drizzle";
import logBook from "./contracts/logBook.json";


const options = {
  contracts: [logBook],
  web3: {
    fallback: {
      type: "ws",
      url: "ws://127.0.0.1:9545",
    },
  },
};

// setup the drizzle store and drizzle
const drizzle = new Drizzle(options);

ReactDOM.render(<App drizzle={drizzle} />, document.getElementById('root'));