# Feeds

<img src="https://github.com/lizan-prad/Feeds/assets/96415013/70e04e5b-7190-4d81-9cdf-16cdb41dae45" alt="LaunchScreen" width="200" height="450">
<img src="https://github.com/lizan-prad/Feeds/assets/96415013/df2f3f02-fd40-4e99-a2d5-36dfb5e852a6" alt="FeedsList" width="200" height="450">
<img src="https://github.com/lizan-prad/Feeds/assets/96415013/e36426c7-e1ce-46fc-b58c-e426178a2533" alt="PostDetails" width="200" height="450">

## Overview

Feeds is an iOS application that displays a list of posts fetched from a remote API. The app supports features such as infinite scrolling, image caching, and offline access through local caching. The project uses MVVM-C architecture, Combine framework for reactive programming, and Core Data for local storage.

## Features

- Fetch and display posts from a remote API
- Infinite scroll to load more posts as the user scrolls
- Image caching to avoid redundant network calls
- Local caching to support offline access
- Graceful error handling and user-friendly error messages

## Requirements

- Xcode 12.5 or later
- iOS 14.0 or later
- Swift 5.3 or later

## Setup Instructions

### 1. Clone the Repository

```sh
git clone https://github.com/lizan-prad/Feeds.git
cd TeletronincsAssessment
```

### 2. Open the Project in Xcode
Open TeletronincsAssessment.xcodeproj in Xcode.

### 3. Install Dependencies
- Lottie-swift: Library for animations (added to `LaunchAnimationViewController`)
- Build the Podfile before building the project by:
```sh
pod install
```
- make sure you set the deploymentTarget for the `lottie-ios` to `ios 12`
- Ensure you have the latest Xcode and iOS SDK installed.

### 4. Build and Run the Project
Select the target device or simulator and press Cmd + R to build and run the project.

## Running Tests
FYI: Don't forget to comment the `self.savePostsWithAlbumsAndPhotos(posts: posts)` in `PostListViewModel` before starting the UITests

- Unit Tests
Unit tests are located in the TeletronincsAssessmentTests target. To run the unit tests:
- Select the TeletronincsAssessmentTests scheme.
Press Cmd + U to run the tests.
UI Tests
UI tests are located in the SocialMediaAppUITests target. To run the UI tests:
- Select the TeletronincsAssessmentUITests scheme.
Press Cmd + U to run the tests.

## Assumptions

- API Availability: The remote API used for fetching posts is available and stable. If the API is down or unreachable, the app will show an error message to the user.
- Image URLs: It is assumed that each post has a valid image URL. In a real-world scenario, proper validation and error handling would be necessary.
- Infinite Scroll: The API supports pagination and returns a predictable number of posts per page. The current implementation assumes that fetching posts will return a non-empty response until there are no more posts.
- Core Data Model: The Core Data model for caching posts is set up correctly. The model includes attributes for id, title, and body as required by the Post entity.

## Project Structure

- Model: Contains data models and Core Data entities.
- ViewModel: Contains view models for managing data and state.
- View: Contains UI components and view controllers.
- Coordinator: Contains the `AppCoordinator` for managing navigation.
- Service: Contains network and caching services.
- Helpers: Contains utility classes and extensions.
- Resources: Contains `AppDelegate` class and `TeletronicsAssessment.xcdatamodeld`.
- Tests: Contains unit and UI tests.

## Contact

For any questions or issues, please open an issue on the repository or contact lizan1895@gmail.com.
