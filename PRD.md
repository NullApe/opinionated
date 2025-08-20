# Product Requirements Document: "Opinion Rewards" App

## 1. Overview

### 1.1. Executive Summary
"Opinion Rewards" is a mobile application that allows users to monetize their personal data and opinions. Users provide demographic information and answer targeted market research questions in exchange for points. These points can then be used to enter prize drawings. The platform consists of a user-facing mobile app (iOS and Android) and a web-based administrative panel for managing users, questions, and analytics.

### 1.2. Project Goals & Objectives
*   **For Users:** Provide a simple, engaging, and rewarding way for users to leverage their opinion data for a chance to win valuable prizes.
*   **For Business:** Build a platform to gather valuable, targeted market research data. Create an engaged user base that can be polled for insights.

### 1.3. Success Metrics
*   Monthly Active Users (MAU)
*   Daily Active Users (DAU)
*   User Retention Rate (Day 7, Day 30)
*   Average Questions Answered per User per Week
*   Number of Prize Draw Entries
*   User Acquisition via Referrals

## 2. Target Audience
*   **Primary:** Mobile users aged 18-45 who are comfortable sharing demographic and opinion data in exchange for rewards. They are frequent users of mobile apps and participate in loyalty or rewards programs.
*   **Secondary:** Market research firms, brands, and organizations seeking targeted consumer insights.

## 3. Mobile Application: Features & Requirements

### 3.1. User Onboarding & Profile Creation
*   A multi-step onboarding flow that explains what the app is, how it works, and how user data is used.
*   User Account Creation: Email/Password, Google Sign-In, and Apple Sign-In. Includes password recovery.
*   Demographic Data Collection (Required): Age, Gender, Location.
*   Demographic Data Collection (Optional): Household Income, Education, Employment, Marital Status, Children, Interests.
*   Users must agree to Terms of Service and a Privacy Policy.

### 3.2. Core User Experience
*   **Home/Dashboard:** Current point balance, feed of available questions, featured prize drawings.
*   **Question Flow:** Dedicated screen for questions. Supported types: Single-select, Multi-select, Likert Scale, Yes/No. Confirmation message with points awarded.
*   **Prize Drawings Screen:** Gallery of prizes with image, cost per entry, and countdown. Entry flow to purchase entries with points.
*   **Profile & Stats Screen:** View/edit demographic data, view point balance, lifetime points, total questions answered, and a history log of recent activity. Access to settings.

### 3.3. Push Notifications
*   Opt-in during onboarding, manageable in settings.
*   Triggers: New question available, prize drawing win, drawing ending soon.

## 4. Web Application: Admin Panel

### 4.1. Secure Login & Roles
*   Secure login with email and password.
*   **Role-Based Access Control (RBAC):**
    *   **Admin:** Full access to all platform features, analytics, and settings.
    *   **Moderator:** Can view and manage the user database (suspend/view users) and manage questions. Cannot manage prizes, view high-level analytics, or change system settings.

### 4.2. Analytics Dashboard
*   Display of key metrics (Total Users, DAU, MAU, etc.) with date range filters.
*   Demographic breakdown of the user base with charts.

### 4.3. User Database Management
*   Searchable and filterable table of all users.
*   Ability to view a user's detailed profile and suspend/delete their account.

### 4.4. Question Management
*   Flow to create new questions with specific response types.
*   Ability to target questions to users based on demographic filters.
*   Set points awarded, max responses, and schedule for immediate or future delivery.

### 4.5. Prize Management
*   Flow to create a new prize drawing (name, description, image, point cost, drawing date).
*   Dashboard for active and past drawings.
*   **Automated Winner Drawing:** A mechanism to automatically and randomly draw a winner from all entries.
*   **Winner Fulfillment Workflow:** A dedicated view for admins to see the winner's details (with consent), log communication (e.g., "Notified via email"), and update the prize status (e.g., "Notified," "Prize Sent," "Fulfilled").

## 5. Agreed Enhancements (Version 1.1)

### 5.1. Gamification
*   **Daily Streaks:** Users receive bonus points for answering at least one question on consecutive days (e.g., 3-day, 7-day streaks).
*   **Achievements/Badges:** A section in the user profile to display earned badges.
    *   *Initial Badges:* "Profile Pro" (all optional profile fields completed), "Question Master" (100 questions answered), "Lucky Charm" (first prize entry), "Super Sharer" (first successful referral).

### 5.2. Referral System
*   Users have a unique, shareable referral code available in their profile.
*   The referrer earns bonus points when a new user signs up with their code and completes the initial demographic profile.

## 6. Non-Functional Requirements

### 6.1. Security
*   All user data encrypted at rest and in transit.
*   Adherence to data privacy regulations (e.g., GDPR, CCPA).
*   **Admin Action Logging:** All significant state-changing actions performed in the admin panel (e.g., suspending a user, creating a prize) must be logged with the acting admin's ID and a timestamp for auditing purposes.

### 6.2. Performance
*   API response times under 500ms.
*   Smooth UI (60 FPS).

### 6.3. Scalability
*   Backend infrastructure must scale to handle a large number of concurrent users.

### 6.4. Platform
*   Mobile app for both iOS and Android (Flutter).
*   Web-based admin panel (Flutter Web).
*   **App Versioning & Forced Updates:** The backend will store a minimum required app version. The mobile app will check against this on launch and, if below the minimum, will show a non-dismissible dialog prompting the user to update.
