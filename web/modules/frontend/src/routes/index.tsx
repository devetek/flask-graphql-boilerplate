import React from 'react';
import { Route, Switch } from 'react-router-dom';
import HomeComponent from 'routes/HomePage';
import LoginComponent from 'routes/LoginPage';

const Routes: React.FC = () => {
  return (
    <Switch>
      <Route exact path="/" component={HomeComponent} />
      <Route exact path="/login" component={LoginComponent} />
    </Switch>
  );
};

export default Routes;
