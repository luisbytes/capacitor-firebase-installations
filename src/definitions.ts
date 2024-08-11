export interface FirebaseInstallationsPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
