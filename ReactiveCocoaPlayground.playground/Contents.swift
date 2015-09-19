//: This is a Playground for your ReactiveCocoa experiments. Be sure to perform following steps before using it:
//: 1. Run ``pod install`` in a root directory to install all dependencies
//: 2. Open ReactiveCocoaPlayground.xcworkspace
//: 3. Build ReactieCocoaPlayground target
//: 4. You are good to go. Enjoy.

import Foundation
import ReactiveCocoa

let helloProducer: SignalProducer<String, NoError> = SignalProducer { sink, _ in
    sendNext(sink, "Hello, RAC!")
    sendCompleted(sink)
}

func helloProcessor(message: String) {
    print(message)
}

helloProducer.startWithNext(helloProcessor)
