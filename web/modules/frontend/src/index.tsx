import { createBrowserHistory } from 'history';
import { render } from 'react-dom';
import 'unfetch/polyfill';
import App from './App';
import './index.css';
import * as serviceWorker from './serviceWorker';

const history = createBrowserHistory();

const bootstrap = () => {
  const container = document.getElementById('root');
  const reactDOM = render;
  const props = { history };

  reactDOM(App(props), container);
};

bootstrap();

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
