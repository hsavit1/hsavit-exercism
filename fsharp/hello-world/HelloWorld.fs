module HelloWorld
    let hello (name : string option) =
        match name with
        | Some n -> printfn "Hello, %s" n
        | None -> printfn "Hello, World"
