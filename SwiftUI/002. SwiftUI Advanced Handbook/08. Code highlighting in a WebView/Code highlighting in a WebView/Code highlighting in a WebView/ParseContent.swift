//
//  ParseContent.swift
//  Code highlighting in a WebView
//
//  Created by mrgsdev on 17.07.2024.
//
 
import Foundation
import Ink

class ParseContent: ObservableObject {
    var markdown = """
    # Code highlighting in a WebView
    When you build a site, it is important to respect the correct structure for your texts, images and buttons. That's because search engines will read your content and index it based on your structure. Some basic rules are:

    - Every page needs an **h1** for title.
    - Every page needs meta tags specifically for search engines: **title**, **description**, **keywords**, etc.
    - Every image needs an **alt** properties to explain what the image is about. This is also great for accessibility.

    ```jsx
    <img src="/images/logos/logo.svg" alt="logo" />
    <h1>Design and code React apps</h1>
    <p>
      Don’t skip design. Learn design and code by building real apps with
      React and Swift. Complete courses about the best tools.
    </p>
    ```
    """
    
    
    func parse() -> String {
        let parser = MarkdownParser()
        let html = parser.html(from: markdown)
        
        let htmlStart = "<HTML><HEAD><link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/highlight.js/10.5.0/styles/atom-one-dark.min.css\"></HEAD><BODY style=\"padding: 40px; font-size: 20px; font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Oxygen,Ubuntu,Cantarell,Open Sans,Helvetica Neue,sans-serif\">"
        
        let codeRegex = "<code.*?"
        let contentWithCodeStyling = html.replacingOccurrences(of: codeRegex, with: "$0" + " style=\" margin-bottom: 20px; overflow: scroll; border-radius: 10px; padding: 20px; padding-right: 0; font-family: SF Mono,-apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Oxygen,Ubuntu,Cantarell,Open Sans,Helvetica Neue,sans-serif; font-size: 15px; font-weight: 500; line-height: 20px;", options: .regularExpression, range: nil)

        let htmlEnd = "<script src=\"https://cdnjs.cloudflare.com/ajax/libs/highlight.js/10.5.0/highlight.min.js\"></script><script>hljs.initHighlightingOnLoad();</script></BODY></HTML>"
        
        return htmlStart + contentWithCodeStyling + htmlEnd
    }
}



