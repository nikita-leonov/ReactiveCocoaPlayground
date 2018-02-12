//: This is a Playground for your ReactiveCocoa experiments. Be sure to perform following steps before using it:
//: 1. Run ``pod install`` in a root directory to install all dependencies
//: 2. Open ReactiveCocoaPlayground.xcworkspace
//: 3. Build ReactieCocoaPlayground target
//: 4. You are good to go. Enjoy.

import Foundation
import ReactiveSwift
import ReactiveCocoa
import enum Result.NoError

let helloProducer: SignalProducer<String, NoError> = SignalProducer { observer, _ in
  observer.send(value: "Hello, RAC!")
  observer.sendCompleted()
}

func helloProcessor(message: String) {
    print(message)
}

helloProducer.startWithValues(helloProcessor)

