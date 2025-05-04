import { FirebaseInstallations } from '@luisbytes&#x2F;capacitor-firebase-installations';

window.testEcho = () => {
  const inputValue = document.getElementById('echoInput').value;
  FirebaseInstallations.echo({ value: inputValue });
};
