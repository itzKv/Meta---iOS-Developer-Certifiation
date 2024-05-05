import Cocoa

let language = "English"
switch language {
    case "English": print("The default language is set to English.")
    case "Spanish": print("The default language is set to Spanish.")
    default: print("The default language has not been configured yet.")
    // default: break
}
