import { registerPlugin } from '@capacitor/core';

import type { FirebaseInstallationsPlugin } from './definitions';

const FirebaseInstallations = registerPlugin<FirebaseInstallationsPlugin>(
  'FirebaseInstallations',
  {
    web: () => import('./web').then(m => new m.FirebaseInstallationsWeb()),
  },
);

export * from './definitions';
export { FirebaseInstallations };
