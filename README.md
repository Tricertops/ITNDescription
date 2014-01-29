# ITNDescription

A category on `NSObject`, that automatically generates debugging description.

An example at the beginning. Printing instance of `MYSomething` class that has no special code for description:

```
po [something itn_longDescription];
```

```
<MYSomething: 0x10923d4b0> {
    _UUID = <__NSConcreteUUID 0x109235250> D1972A0F-FADC-48A9-907E-5EF954FB51AE,
    _owner = <MYSomeone: 0x109205fc0> {
        _UUID = <__NSConcreteUUID 0x109404420> D5B9F54D-A5E1-4880-A93F-44A36ABF1CBF,
        _displayName = “Someone”,
    },
    _displayName = “Something”,
    _passcode = 2376,
    _isActive = No,
    _thatThing = <MYThing: 0x10923da50> {
        _something = <MYSomething: 0x10923d4b0>,
        _member = <MYPerson: 0x109205fc0>,
        _isThere = Yes,
        _isBusy = No,
    },
    _moreThings = 3 objects (
        <MYThing: 0x1092eda56>,
        <MYThing: 0x60ef3dcd0>,
        <MYThing: 0x90925da53>,
    ),
    _manager = <MYManager: 0x10923def0> {
        _something = <MYSomething: 0x10923d4b0>,
        _competency = nil,
    },
}
```

  - Prints all properties that have ivars. Optionally recursively and with whitespace padding.
  - If the receiver overrides `-description` or `-debugDescription`, that implementation is called. This is important for existing framework classes, that don't have ivars.
  - Custom description for `NSString`, boolean `NSNumbers`, `NSArray`, `NSDictionary` (and more in future, maybe). Provides easily readable descriptions for those types.

### Methods

  - `itn_shortDescription` – Prints short one-line description, usually in format `<MYClass: 0x90925da53>`.
  - `itn_longDescription` – Prints longer description of the receiver up to 2nd depth level as seen in the example.
  - `itn_descriptionWithDepth:` – Prints description recursively with custom depth level. Zero depth prints short description.
  - `itn_descriptionWithIndentation:depth:` – This is the core method to do recursion. Recursively decrements `depth` by one, until it reaches zero.


---

**ITN** stands for **I**n**T**er**N**als :)  
Licensed under The MIT License  
Copyright © 2014 Martin Kiss
