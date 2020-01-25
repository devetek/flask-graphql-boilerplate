import FullLoader from 'components/FullLoader';
import React from 'react';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import HomeComponent from 'routes/HomePage';
import LoginComponent from 'routes/LoginPage';

const Routes: React.FC = () => {
  return (
    <Router>
      <Switch>
        <Route
          exact
          path="/"
          render={() => {
            return <HomeComponent fallback={<FullLoader />} />;
          }}
        />
        <Route
          exact
          path="/login"
          component={LoginComponent}
          render={() => {
            return <LoginComponent fallback={<FullLoader />} />;
          }}
        />
      </Switch>
    </Router>
  );
};

export default Routes;
