
/*
 try? VS try!
 try? -> Let you call the throwable error function outside the do-catch. The result will be optional, if an error was thrown, it will be converted to nil value.
 try! -> if an error was thrown, the application will crash.
 
 When would you use try! and try? expressions?
 It is not always convenient to write do-catch statements when you only want to call the function and not handle the error.

 The use cases for try! include:
 1. Loading a file from a disk that is guaranteed to be there and you know will never fail.
 2. Writing unit test to simplify code.

 While try? is useful for when:
 1. The error thrown is not important, all errors are handled the same way.
 
 */
 
//do {
//    let image = try loadImageThrowableFunction("image.png")
//}
//catch {}
// Instead of using do-catch, worth knowing if those snippet code will always return image, which we already knows in the directory. So just use try!

//let image = try! loadImageThrowableFunction("image.png")
