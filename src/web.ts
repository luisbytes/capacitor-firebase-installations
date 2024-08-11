import { WebPlugin } from '@capacitor/core';

import type { FirebaseInstallationsPlugin } from './definitions';

export class FirebaseInstallationsWeb
  extends WebPlugin
  implements FirebaseInstallationsPlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
