# ViewFactory

![version tag](https://img.shields.io/github/v/tag/LooseMarek/ViewFactory) ![language](https://img.shields.io/github/languages/top/LooseMarek/ViewFactory) ![license](https://img.shields.io/github/license/LooseMarek/ViewFactory)

![build and test workflow](https://github.com/LooseMarek/ViewFactory/actions/workflows/build_and_test.yml/badge.svg) ![issues](https://img.shields.io/github/issues/LooseMarek/ViewFactory)

Swift package module used for creating basic views with [Factory Pattern](https://www.raywenderlich.com/books/design-patterns-by-tutorials/v3.0/chapters/11-factory-pattern). 

## Content

- [Installation](#installation)
- [Usage](#usage)
- [Show alert rules](#show-alert-rules)
- [Additional settings](#additional-settings)
- [Testing](#testing)
- [Author](#author)

## Installation

### Swift Package Manager

1. In Xcode go to File -> Add Package...
2. In Search or Enter Package URL paste `https://github.com/LooseMarek/ViewFactory`
3. Dependency Rule -> Version Up to Next Major -> 1.0.0 < 2.0.0
4. Add Package
5. On the pop up screen -> Add Package

## Usage

### Import module on top of your class

```
import ViewFactory
```

### Initalize ViewFactory

#### With default colors

```
let viewFactory: ViewFactory Protocol = ViewFactory()
```

#### With custom colors

`TODO`

```
let viewFactory: ViewFactory Protocol = ViewFactory()
```

### Example use

`TODO`

### Extending ViewFactory

`TODO`

### Extending child factories

`TODO`

### Mocks

ViewFactory module provides set of simple mocks to help you test your app. 

The mock classes are located in `Mocks` directory and include:

Mock Factories:

- `MockInputFactory: InputFactoryProtocol`
- `MockScrollFactory: ScrollFactoryProtocol`

Mock Helpers:

- `MockConstraintHelper: ConstraintHelperProtocol`
- `MockGradientHelper: GradientHelperProtocol`
- `MockNavigationBarHelper: NavigationBarHelperProtocol`
- `MockTabBarHelper: TabBarHelperProtocol`

Mock Views:

- `MockScrollView: ScrollView`
- `MockUITextField: UITextField`

## Testing

Module is run with GitHub Actions everytime the new commit is pushed to the remote branch `master`. The testing includes:

- building the project
- running unit tests

You can also do that locally by running below commands in terminal:

Build:

```
xcodebuild -scheme 'ViewFactory' -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 11,OS=15.0' build
```

Test:

```
xcodebuild -scheme 'ViewFactory' -sdk iphonesimulator -destination 'platform=iOS Simulator,name=iPhone 11,OS=15.0' test
```

Note: The commands above are running with iPhone 11 but you can use any iOS devices you like.

## Author

Marek Loose