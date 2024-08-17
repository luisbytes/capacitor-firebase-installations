import { WebPlugin } from '@capacitor/core';

import type { FirebaseInstallationsPlugin } from './definitions';

export class FirebaseInstallationsWeb
  extends WebPlugin
  implements FirebaseInstallationsPlugin
{
  async getId(): Promise<{ id: string }> {
    throw this.unimplemented('Not implemented on web.');
  }
}
