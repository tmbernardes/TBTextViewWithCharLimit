# TBTextViewWithCharLimit

[![Version](https://img.shields.io/cocoapods/v/TBTextViewWithCharLimit.svg?style=flat)](http://cocoapods.org/pods/TBTextViewWithCharLimit)
[![License](https://img.shields.io/cocoapods/l/TBTextViewWithCharLimit.svg?style=flat)](http://cocoapods.org/pods/TBTextViewWithCharLimit)
[![Platform](https://img.shields.io/cocoapods/p/TBTextViewWithCharLimit.svg?style=flat)](http://cocoapods.org/pods/TBTextViewWithCharLimit)

![alt tag](https://raw.githubusercontent.com/thiagotmb/TBTextViewWithCharLimit/master/Screenshots/0.png)
![alt tag](https://raw.githubusercontent.com/thiagotmb/TBTextViewWithCharLimit/master/Screenshots/1.png)
![alt tag](https://raw.githubusercontent.com/thiagotmb/TBTextViewWithCharLimit/master/Screenshots/2.png)

## Usage
Add to your podfile 
```ruby
pod "TBTextViewWithCharLimit"
```

```objc
//Import
#import "TextViewWithCharLimit.h"

//Setup
@interface MyClass () <,TextViewWithCharLimitDelegate>

TextViewWithCharLimit *textField = TextViewWithCharLimit(frame: self.view.frame)
textField.myDelegate = self;
textField.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.2];
textField.charMax = 105;
textField.placeholderText = @"Empty field";

//Delegates 
-(void)textViewWithCharLimit:(TextViewWithCharLimit *)textViewWithCharLimit shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    
}

```
To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
IOS 8.0

## Installation

TextViewWithCharLimit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "TBTextViewWithCharLimit"
```

## Author

thiagotmb, tmb0710@gmail.com

## License

TextViewWithCharLimit is available under the MIT license. See the LICENSE file for more info.

