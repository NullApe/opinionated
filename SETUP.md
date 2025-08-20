# Opinion Rewards: Local Development Setup Guide

Welcome to the Opinion Rewards project! This guide provides step-by-step instructions to set up your local development environment and run the applications.

## 1. Prerequisites

Before you begin, ensure you have the following tools installed on your system.

### 1.1. Flutter SDK
The project is built with Flutter. If you don't have it installed, follow the official instructions for your operating system.

- **Official Guide:** [Install Flutter](https://docs.flutter.dev/get-started/install)

Verify the installation by running:
```sh
flutter --version
```

### 1.2. Melos
We use Melos to manage this monorepo. After installing Flutter/Dart, you can install Melos by activating it from `pub.dev`.

- **Installation:**
  ```sh
  dart pub global activate melos
  ```
- **Verify:**
  ```sh
  melos --version
  ```

### 1.3. Firebase CLI
You will need the Firebase Command Line Interface (CLI) to configure the project and deploy backend services (like Cloud Functions).

- **Official Guide:** [Install the Firebase CLI](https://firebase.google.com/docs/cli#install-cli)
- **Login:** After installation, log in to your Google account:
  ```sh
  firebase login
  ```

## 2. Firebase Project Setup

The backend of Opinion Rewards runs on Firebase.

### 2.1. Create a Firebase Project
1.  Go to the [Firebase Console](https://console.firebase.google.com/).
2.  Click **"Add project"** and follow the on-screen instructions to create a new project.

### 2.2. Enable Firebase Services
In your new project's dashboard, enable the following services:
1.  **Authentication:** Go to `Authentication > Sign-in method`. Enable **Email/Password**, **Google**, and **Apple**.
2.  **Firestore Database:** Go to `Firestore Database > Create database`. Start in **test mode** for now. You can secure it later with the rules that will be provided in the repository.
3.  **Storage:** Go to `Storage > Get started` to enable Cloud Storage.
4.  **Cloud Functions:** No explicit action is needed now, but it will be used for backend logic.

### 2.3. Configure Your Apps with Firebase
You need to register the mobile app (iOS/Android) and the web app with your Firebase project.

1.  **Install FlutterFire CLI:**
    ```sh
    dart pub global activate flutterfire_cli
    ```
2.  **Run the Configure Command:** From the root of the repository, run the following command. It will guide you through selecting your Firebase project and registering the apps.
    ```sh
    flutterfire configure
    ```
3.  This command will automatically generate a `lib/firebase_options.dart` file inside **both** the `packages/opinion_rewards_app` and `packages/opinion_rewards_admin` directories. This file contains the API keys needed to connect to your Firebase project. **This file should not be committed to version control.** The `.gitignore` file is already configured to ignore it.

## 3. Project Bootstrapping

Once the prerequisites are installed and Firebase is configured, you need to link all the local packages and install their dependencies.

- **Run Melos Bootstrap:** From the root of the repository, run:
  ```sh
  melos bootstrap
  ```
This command will run `flutter pub get` in each of the packages (`app`, `admin`, and `shared`) and set up the monorepo correctly.

## 4. Running the Applications

### 4.1. Running the Mobile App
- Navigate to the mobile app's directory and run it:
  ```sh
  cd packages/opinion_rewards_app
  flutter run
  ```

### 4.2. Running the Web Admin Panel
- Navigate to the web admin panel's directory and run it:
  ```sh
  cd packages/opinion_rewards_admin
  flutter run -d chrome
  ```

## 5. Deploying Backend Functions

The repository will contain backend logic in the `functions/` directory.

- **Deploy:** To deploy the Cloud Functions, navigate to the `functions` directory and run:
  ```sh
  cd functions
  firebase deploy --only functions
  ```

You are now all set! If you encounter any issues, please refer to the official documentation for each of the tools listed.
