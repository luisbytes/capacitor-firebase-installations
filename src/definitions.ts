export interface FirebaseInstallationsPlugin {
  getId(): Promise<{ id: string }>;
}
