import Grid from '@material-ui/core/Grid';
import Paper from '@material-ui/core/Paper';
import config from 'config';
import { get } from 'libraries/localStorage';
import React, { useEffect, useState } from 'react';
import { Helmet } from 'react-helmet-async';
import useStyles from './style';

const HomePage = () => {
  const [session, setSession] = useState<string | null>(null);
  const classes = useStyles();

  useEffect(() => {
    async function getLocalSession() {
      const hasSession = get('accessToken');

      setSession(hasSession);
    }

    if (!session) {
      getLocalSession();
    }
  }, [session]);

  return (
    <div className={classes.root}>
      <Helmet>
        <title>{config.APP_NAME}</title>
      </Helmet>
      <Grid container spacing={3}>
        <Grid item xs={12}>
          <Paper className={classes.paper}>
            <p>User Session: {JSON.stringify(session)}</p>
          </Paper>
        </Grid>
      </Grid>
    </div>
  );
};

export default HomePage;
