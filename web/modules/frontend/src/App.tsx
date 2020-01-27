import React from 'react';
import { HelmetProvider } from 'react-helmet-async';
import { Router } from 'react-router-dom';
import './App.css';
import Routes from './routes';

function App({ history }: App): any {
  return (
    <div className="App">
      <HelmetProvider>
        <Router history={history}>
          <Routes />
        </Router>
      </HelmetProvider>
    </div>
  );
}

export default App;
