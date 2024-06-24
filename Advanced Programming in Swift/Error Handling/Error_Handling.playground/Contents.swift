import UIKit

enum RegistrationDetailsFormatError: Error {
    case usernameEmpty
    case passwordEmpty
    case passwordTooShort
}

func validatePassword(username: String, password: String) throws {
    if username.isEmpty {
        throw RegistrationDetailsFormatError.usernameEmpty
    }
    else if password.isEmpty {
        throw RegistrationDetailsFormatError.passwordEmpty
    }
    else if password.count < 7 {
        throw RegistrationDetailsFormatError.passwordTooShort
    }
}

do {
    try validatePassword(username: "Takamura Mamoru", password: "lordofpervert")
    print("Validation Success")
}

catch RegistrationDetailsFormatError.usernameEmpty, RegistrationDetailsFormatError.passwordEmpty {
    print("Username and Password cannot be empty")
}

catch RegistrationDetailsFormatError.passwordTooShort {
    print("Password must be longer than 7 characters")
}
