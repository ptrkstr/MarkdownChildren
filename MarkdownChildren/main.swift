import Foundation
import MarkdownChildrenKit
import ArgumentParser

private let tagStart = "<!-- markdown-children:start -->"
private let tagEnd = "<!-- markdown-children:end -->"

struct MarkdownChildren: ParsableCommand {
    
    @Argument(
        help: "Path to root markdown file. Ensure it contains `\(tagStart)` and `\(tagEnd)`"
    )
    var rootFileURL: URL
    
    @Option(
        name: .shortAndLong,
        help: "How to name each file node (allowed: \(ListItemMarkdownNameType.allValueStrings.joined(separator: ", ")))"
    )
    var nameType: ListItemMarkdownNameType = .useFilename
    
    func run() throws {
        try MarkdownChildrenKit.MarkdownChildren().process(.init(
            url: rootFileURL,
            nameType: nameType,
            tagStart: tagStart,
            tagEnd: tagEnd
        ))
    }
}

extension URL: ExpressibleByArgument {
    public init?(argument: String) {
        self = URL(fileURLWithPath: argument)
    }
}

extension ListItemMarkdownNameType: ExpressibleByArgument {}

MarkdownChildren.main()
