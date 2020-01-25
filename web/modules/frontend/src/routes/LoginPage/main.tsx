import Avatar from '@material-ui/core/Avatar';
import Button from '@material-ui/core/Button';
import Checkbox from '@material-ui/core/Checkbox';
import Container from '@material-ui/core/Container';
import CssBaseline from '@material-ui/core/CssBaseline';
import FormControlLabel from '@material-ui/core/FormControlLabel';
import Grid from '@material-ui/core/Grid';
import Link from '@material-ui/core/Link';
import TextField from '@material-ui/core/TextField';
import Typography from '@material-ui/core/Typography';
import LockOutlinedIcon from '@material-ui/icons/LockOutlined';
import Modal from 'components/Modal';
import { IModal } from 'components/Modal/interface';
import errorHandler from 'libraries/error';
import { save } from 'libraries/localStorage';
import getLodash from 'lodash/get';
import { doLogin } from 'models/login';
import { IdoLoginRequest, IdoLoginResponse } from 'models/login/interface';
import React, { useState } from 'react';
import { useHistory } from 'react-router-dom';
import useStyles from './style';

const LoginPage: React.SFC = () => {
  const history = useHistory();
  const classes = useStyles();
  const [isLoading, setLoading] = useState<boolean>(false);
  const [formData, setFormData] = useState<IdoLoginRequest>({
    member_username: '',
    member_password: '',
  });
  const [data, setData] = useState<IdoLoginResponse>();
  const [modalProps, setModalProps] = useState<IModal>({
    isOpen: false,
    title: 'Gagal',
    description: '',
    onCancelHandler: () => {},
    onOkHandler: () => {},
  });

  const handleOnChangeForm = (name: string, value: string) => {
    setFormData({ ...formData, ...{ [name]: value } });
  };

  const handleModalOkAndClose = (): void => {
    setModalProps({ ...modalProps, ...{ isOpen: false } });
  };

  const handleOnSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();

    setLoading(true);

    if (!formData.member_username) {
      setModalProps({
        isOpen: true,
        description: errorHandler('Username tidak boleh kosong'),
        onCancelHandler: handleModalOkAndClose,
        onOkHandler: handleModalOkAndClose,
      });
      setLoading(false);

      return;
    }

    if (!formData.member_password) {
      setModalProps({
        isOpen: true,
        description: errorHandler('Password tidak boleh kosong'),
        onCancelHandler: handleModalOkAndClose,
        onOkHandler: handleModalOkAndClose,
      });
      setLoading(false);

      return;
    }

    const response = await doLogin(formData);

    console.log(response);

    const isSuccess = response?.success ?? false;

    if (isSuccess) {
      const accessToken = getLodash(response, 'data.access_token');
      const refreshToken = getLodash(response, 'data.refresh_token');

      save('accessToken', accessToken);
      save('refreshToken', refreshToken);
      history.push('/');

      return;
    } else {
      setModalProps({
        isOpen: true,
        description: errorHandler(response?.message ?? 'Terjadi kesalahan system.'),
        onCancelHandler: handleModalOkAndClose,
        onOkHandler: handleModalOkAndClose,
      });
    }

    setLoading(false);

    return;
  };

  return (
    <Container component="main" maxWidth="xs">
      {modalProps.isOpen ? <Modal {...modalProps} /> : null}
      <CssBaseline />
      <div className={classes.paper}>
        <Avatar className={classes.avatar}>
          <LockOutlinedIcon />
        </Avatar>
        <Typography component="h1" variant="h5">
          Sign in
        </Typography>
        <form method="POST" className={classes.form} noValidate onSubmit={e => handleOnSubmit(e)}>
          <TextField
            onChange={e => handleOnChangeForm('member_username', e.target.value)}
            variant="outlined"
            margin="normal"
            required
            fullWidth
            id="username"
            label="Username/Email"
            name="username"
            autoComplete="username"
            autoFocus
          />
          <TextField
            onChange={e => handleOnChangeForm('member_password', e.target.value)}
            variant="outlined"
            margin="normal"
            required
            fullWidth
            name="password"
            label="Password"
            type="password"
            id="password"
            autoComplete="current-password"
          />
          <FormControlLabel control={<Checkbox value="remember" color="primary" />} label="Remember me" />
          <Button
            disabled={isLoading}
            type="submit"
            fullWidth
            variant="contained"
            color="primary"
            className={classes.submit}
          >
            Sign In
          </Button>
          <Grid container>
            <Grid item xs>
              <Link href="#" variant="body2">
                Forgot password?
              </Link>
            </Grid>
            <Grid item>
              <Link href="#" variant="body2">
                {"Don't have an account? Sign Up"}
              </Link>
            </Grid>
          </Grid>
        </form>
      </div>
    </Container>
  );
};

export default LoginPage;
