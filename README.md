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

-~~[ ] Validate user's input including bill amount and number of people~~ (Actually it has been done as user can only use num pad which contains only digit numbers from 0-9 )
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

**Answer:** 
It's really amazing to use XCode8 and Swift3 to develop an ios app! What has impressed me most so far is how Swift3 prevents nil value by wrapping/unwrapping Optional/Non-Optional values. Actually, I'm still not totally clear about how to do it in a neat and perfect way even after I finish this pre-work. I think it's a very unique and interesting feature of Swift.

Another good thing is the way XCode creates UI and connect it to controllers. I never image that pressing ctrl and dragging the UI widget from storyboard to the controller will do the magic.
For me, an **Outlet** is the reference of a UI component in the viewController. It can be any object in the storyboard, and it shows as "@Property" in the view controller. An **Action** is a method triggered by an event happened to a UI object like editing, value changed and tapping. 

Opening the Storyboard as Source Code, we can see below structures: 

```
<viewController>
    <view>
        <slider>
            <connections>
                <action selector="lighterScreen:" destination="BYZ-38-t0r" eventType="touchUpInside" id="Ro2-DS-iW8"/>
            </connections>
        </slider>
    </view>
    <connections>
        <outlet property="percentSlider" destination="h4D-Gt-XFJ" id="Q2r-ex-ifB"/>
    </connections>
</viewController>
```
From this, we can tell an **outlet** is a connection between a view and a viewContoller, in other words, a view talks to the viewContoller by outlets. An **action** matches to an eventType of a UI object in the view, and it will trigger a selector/method in the viewController.



**Question 2**: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:**

I can get a strong reference cycle in below 3 ways:
1. When two class instance properties hold a strong reference to each other
2. If I assign a closure to a property of a class instance, and the body of that closure captures the instance by calling _self_.
3. When closures, like classes, are reference types, so it’s a class instance and a closure that are keeping each other alive.


## License

    Copyright [MandyChen]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
