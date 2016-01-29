# Waterloo
Super simple Swift abstractions for GCD

Hides all those ugly C calls away from your beautiful Swift code.

## TODO
Add more abstractions for GCD types/calls
- Main queue dispatch
- Dispatch groups
- Dispatch barriers

# Serial Queue
``` Swift
let q = SerialQueue(label: "com.test.q")
q.async {
    print("Hello")
}

q.sync {
    print("Goodbye!")
}
```

#Concurrent Queue
``` Swift
let q = ConcurrentQueue(label: "com.test.q")
q.async {
    print("Hello")
}

q.sync {
    print("Goodbye!")
}
```

#Semaphore
``` Swift
let sem = Semaphore(0)
q.async {
    sem.signal()
}

sem.wait(1) // wait for a max of 1 sec
print("HERE")
```
