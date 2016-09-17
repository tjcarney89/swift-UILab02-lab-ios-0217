# UI Lab: Painting By Numbers

![VinceLombardi](http://i.imgur.com/urMqQsf.png?1)

> Perfection is not attainable, but if we chase perfection we can catch excellence. -[Vince Lombardi](https://en.wikipedia.org/wiki/Vince_Lombardi)

## Overview

Have you ever mixed two colors of paint together? You get a different color, right? In this lab, you will be mixing two colors of paint together to produce another color.

## Paints: A Primer

Artists often use _primary_ colors to produce _secondary_ colors. Primary colors are ones that can easily be mixed together to produce other colors. For example, you can mix red and blue together to make purple, or yellow and red together to make orange. Here is a table showing a primary color along the top and left side, and what colors they produce when mixed:

<table>
<tr>
<th></th>
<th>Red</th>
<th>Yellow</th>
<th>Blue</th>
</tr>
<tr>
<th>Red</td>
<td>Red</td>
<td>Orange</td>
<td>Purple</td>
</tr>
<tr>
<th>Yellow</th>
<td>Orange</td>
<td>Yellow</td>
<td>Green</td>
</tr>
<tr>
<th>Blue</th>
<td>Purple</td>
<td>Green</td>
<td>Blue</td>
</tr>
</table>

In this lab, you will be implementing this logic to update an app UI to display these different colors.

## App

Specifically, you are tasked with producing a user interface for an app that looks like this:

![Paint Bucket UI](http://i.imgur.com/kIaCdAy.png)

The user can select different options in order to show different colors in the paint bucket. For example, selecting **Blue** and **Yellow** would produce this:

![Paint Bucket UI](http://i.imgur.com/8mHzYjT.png)

Selecting **Blue** and **Red** would show this:

![Paint Bucket UI](http://i.imgur.com/Se2uNIl.png)

You get the idea by now.

As in previous labs, some parts of this app have already been written for you, but you will need to fill in the missing parts in order for the application to work. Open up the Xcode project provided by in this repo from `UIFun/UIFun.xcodeproj` and check out what has been given to you.

### Starting Off

The project contains a barebones (and barely functional) view controller, in `ViewController.swift`. You'll see that several parts have been marked as `TODO`. This indicates the parts of the code that _you_ have to fill in yourself.

`Main.storyboard` contains a single scene. That scene already has a view, the paint bucket. The segmented controls have not been created for you yet. No IB outlets have been set up for you, either, and no UI elements have been connected to the IB action declared in `ViewController.swift`, either.

Time to get started!

### Your Tasks

Here is what you need to accomplish to get this application working. Before you start, though, make sure to read through this entire lab, as there are some helpful hints and notes at the end that should make your task a lot easier.

1. Create an _IB outlet_ to the paint bucket view. (This outlet should be of type `UIImageView`.) Name it `paintBucket`.
2. Add the two segmented controls below the paint bucket view. Give them each three options with the names Red, Yellow and Blue.
3. Create and connect an _IB outlet_ to the first segmented control. This should be of type `UISegmentedControl`. Name it `firstColorSegmentedControl`.
4. Create and connect another _IB outlet_ to the second segmented control. This should also be of type `UISegmentedControl`. Name it `secondColorSegmentedControl`. 
5. Connect _both_ segmented controls to the `colorSelected(_:)` _IB action_ already declared in `ViewController.swift`. You should notice something interesting here: More than one UI element can have the _same_ action. That is, you can connect _two_ segmented controls to `colorSelected(_:)`. You haven't seen this happen in previous labs, but this is totally fine, and, in fact, frequently happens in iOS interfaces.
6. `colorSelected(_:)` is called whenever the user presses one of the buttons in either segmented control. You should write some logic to get the color selected by _each_ control, "mix" them together to produce a new color, and then update the paint bucket to display the mixed color. See Note Below!
7. The `mixColors(first:second:)` has been implemented for you. If you pass in two `String`'s, it will give back to you a `UIColor` which you can use to update the backgroundcolor of any view! In this case, we will be updating the backgroundcolor of the `paintBucket` view we created.

NOTE: How can you get the color (or option) selected by each segmented control object? In the prior lab, you had figured this out by looking at the argument named `sender`, but that won't suffice here. Why? Because we're not concerned with just one selection--we want to know what was selected on both of the segmented control objects. That's why we had you create two IBOutlets for them.

The following two lines of code should help you out:

```swift
let firstSelection = firstColorSegmentedControl.selectedSegmentIndex
let secondSelection = secondColorSegmentedControl.selectedSegmentIndex
```

`firstSelection` and `secondSelection` are of type `Int` because that's what the type of `selectedSegmentIndex` is. If "Red" & "Red" are selected, `firstSelection` will equal 0 and `secondSelection` will equal 0. Utilize that information to then call on the `mixColors(first:second:)` function with the appropriate values. I would prefer that you use switch statements, but here's how you can solve this problem using if statements.

```swift
    @IBAction func colorSelected(_ sender: UISegmentedControl) {
        
        let firstSelection = firstColorSegmentedControl.selectedSegmentIndex
        let secondSelection = secondColorSegmentedControl.selectedSegmentIndex
        
        if firstSelection == 0 && secondSelection == 0 {
            
            paintBucket.backgroundColor = mixColors(first: "Red", second: "Red")
            
        }
        
    }
```

Ultimately, as you can see--I want you to update the backgroundColor of the `paintBucket`, similar to how you changed the backgroundColor of the lightbuld in the prior lab. Take advantage of print statements to help you better understand this lab and to see when certain functions are getting called, that way you can follow along.

A quick overview of the code that's pasted above. If the `firstSelection` constant is equal to 0 (because someone on the first segmented control has selected "Red" as an option) and if the `secondSelection` constant is equal to 0 (because someone selected "Red" on the second option) then we will update the backgroundcolor of our `paintBucket` object to equal the return value of our call to the `mixColors(first:second:)` function. When we call on the `mixColors` function, we are giving it what it wants (which is two `String`'s)--we're handing off to this function "Red" for the first argument, and "Red" for the second argument. This function will do its thing and return back to us a `UIColor` being red which is exactly what we want. This will change the background color of our bucket to red. 


<a href='https://learn.co/lessons/UILab02' data-visibility='hidden'>View this lesson on Learn.co</a>

<p class='util--hide'>View <a href='https://learn.co/lessons/swift-UILab02-lab'>UI Lab: Painting By Numbers</a> on Learn.co and start learning to code for free.</p>
