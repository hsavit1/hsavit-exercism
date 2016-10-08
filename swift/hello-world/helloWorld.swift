// Enter Solution Here


class HelloWorld {

    func hello(input: String?) -> String {
        if let name = input {
            return "Hello" + name + "!"
        }
        else {
            return "Hello World!"
        }
    }

}
