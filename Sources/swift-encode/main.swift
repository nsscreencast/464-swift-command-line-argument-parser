import ArgumentParser

// swift-encode <input_file> -o output
struct Encode: ParsableCommand {
    @Argument(help: "The input movie file to encode")
    var inputFile: String
    
    @Option(name: [.short, .customLong("out")], help: "The output directory in which to place the encoded files.")
    var outputDirectory: String = "output"

    func run() throws {
        print("Running swift-encode...")
        print("Input file: \(inputFile)")
        print("Output dir: \(outputDirectory)")
    }
}

Encode.main()
