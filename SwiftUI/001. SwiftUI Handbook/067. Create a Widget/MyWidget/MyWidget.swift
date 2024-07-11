//
//  MyWidget.swift
//  MyWidget
//
// Created by mrgsdev on 23.06.2024.
// 67. Create a Widget
// 68. Container Relative Shape
// 69. WidgetFamily sizes.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), emoji: "😀")
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), emoji: "😀")
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, emoji: "😀")
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let emoji: String
}

struct MyWidgetEntryView : View {
    var entry: Provider.Entry
    @Environment(\.widgetFamily) var widgetFamily
    var body: some View {
       
        ZStack {
            switch widgetFamily {
            case .systemSmall:
                Text("Time:")
            case .systemMedium:
                Text(entry.date, style: .time)
            case .systemLarge:
                Text("Emoji:")
            case .systemExtraLarge:
                Text(entry.emoji)
            case .accessoryCorner:
                Text("Em1oji:")
            case .accessoryCircular:
                Text("Emo2ji:")
            case .accessoryRectangular:
                Text("Emo4ji:")
            case .accessoryInline:
                Text("Emoji1:")
            }
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(
            ContainerRelativeShape().fill(.blue).opacity(0.8)
        )
    }
}

struct MyWidget: Widget {
    let kind: String = "MyWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            if #available(iOS 17.0, *) {
                MyWidgetEntryView(entry: entry)
                    .containerBackground(.fill.tertiary, for: .widget)
            } else {
                MyWidgetEntryView(entry: entry)
                    .padding()
                    .background()
            }
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
        .supportedFamilies([.systemSmall,.systemLarge])
    }
}

#Preview(as: .systemSmall) {
    MyWidget()
} timeline: {
    SimpleEntry(date: .now, emoji: "😀")
    SimpleEntry(date: .now, emoji: "🤩")
}
