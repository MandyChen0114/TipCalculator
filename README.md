# Pre-work - *Tip Calculator*

**Tip Calculator** is a tip calculator application for iOS.

Submitted by: **Mandy Chen**

Time spent: **16** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [x] UI animations
* [x] Remembering the bill amount across app restarts (if <10min)
* [x] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:
* [x] Add a light/dark color theme to the settings view. 
* [x] Improve UI. All icons used in the main view are from [Noun Project Website](https://thenounproject.com/).
* [x] Add a launch storyboard
* [x] User can choose any tip percent from 0-30% by slider bar
* [x] User can decide number of people to split the bill, see the average bill amount to each one, and change the default number of people in the settings page.

List anything else that you can get done to improve the app functionality!
- [ ] Validate user's input including bill amount and number of people
- [ ] Adjust UI based on the size and orientation of a device

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

**Basic functions**: Calculate Tip, Change tip percent by slider bar, decide number of people to split the bill, Launch screen, Setting view 

<img src='/GIF/calculateTip.gif' title='Calculate Tip' width='' alt='Calculate Tip' />

**Change Default Settings** : Changes to default settings will not affect current calculation for being user-friendly, but default tip percent and number of people will be new values in the next launch.

<img src='/GIF/defaultSettings.gif' title='Change Default Settings' width='' alt='Change Default Settings' />

**Change Locale Currency**

<img src='/GIF/localeCurrency.gif' title='Change Locale Currency' width='' alt='Change Locale Currency' />

**Remember Bill Amount In 10 seconds**: Making it 10 seconds is for GIF display purpose. Remeber the bill amount across app restarts in 10 seconds while reset it after 10 seconds.

<img src='/GIF/rememberBill.gif' title='Remember Bill' width='' alt='Remember Bill' />

**Dark Theme**: Switch between dark and light theme, and app will remeber user's perference.

<img src='/GIF/darkTheme.gif' title='Dark Theme' width='' alt='Dark Theme' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** [Enter your answer here in a paragraph or two].

Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:** [Enter your answer here in a paragraph or two].


## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
