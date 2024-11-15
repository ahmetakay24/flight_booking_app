
# Flight Booking App

A Swift-based mobile application for booking flights, designed using the MVVM architecture pattern. The app integrates with a RESTful API for flight data and uses UIKit to handle the user interface. It is a fully functional project that demonstrates modern iOS development practices, including API integration, state management, and clean architecture.

> **Note:** This project is still under development. Some features may be incomplete or subject to change.


# Features

- Flight Search: Users can search for available flights based on their departure and destination cities.
- Flight Details: Display flight information including price, duration, and other details.
- Flight Booking: Users can book flights and manage their reservations.
- Modern UI: A clean and modern user interface designed using UIKit.
- MVVM Architecture: Follows the Model-View-ViewModel pattern for separation of concerns.
- RESTful API Integration: Uses a mock JSON API to fetch and display flight data.
- Error Handling: Handles network errors gracefully with user-friendly messages.
- Unit Tests: Includes unit tests for core components.

# Screenshots

Include screenshots of the app's main screens like flight search, flight details, booking screen, etc. (coming soon).

# Getting Started

## Prerequisites

- Xcode 14+
- iOS 16+
- Swift 5.7+

## Installation

- Clone the repository:

```bash
  git clone https://github.com/ahmetakay24/flight_booking_app.git
```

- Clone the repository:

```bash
  cd flight_booking_app
  open FlightBookingApp.xcodeproj
```

- Install dependencies (if any).

- Build and run the project on an iOS Simulator or a physical device.

# API

This project uses a mock RESTful API to simulate flight data. The API is built using JSON and provides endpoints for fetching flight details, available flights, and bookings.

**API Link:** https://github.com/ahmetakay24/flight_booking_app_mock_json

# Project Structure

- Models - Contains the data models representing flight information.
- ViewModels - Contains the logic to interact with models and update views.
- Views - UIKit-based user interface components and screens.
- Services - Handles network requests and communicates with the API.
- Tests - Contains unit tests for core functionality.

# Future Improvements

- Authentication: Add user login and registration.
- Payment Integration: Enable users to complete bookings with real-time payments.
- Push Notifications: Send notifications for flight status updates or offers.

# Contributing
Contributions are welcome! Please feel free to submit a Pull Request or open an issue.

## Screenshots

![Screenshot 1](https://i.hizliresim.com/a0xnuhz.png)
