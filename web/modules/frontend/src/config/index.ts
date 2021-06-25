import develConfig from 'config/development';
import prodConfig from 'config/production';

const envCnfig = process.env.NODE_ENV === 'development' ? develConfig : prodConfig;

const defaultConfig: AppConfig = {
  APP_NAME: 'Butterfly Dashboard',
  ...envCnfig
}

export default defaultConfig;
