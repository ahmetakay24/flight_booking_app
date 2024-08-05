//
//  OnboardingView.swift
//  FlightBookingApp
//
//  Created by TheHustleMachine on 1.08.2024.
//

import SwiftUI

struct OnboardingView: View {
    @Environment(\.appTheme) var theme
    @State var pageNumber: Int
    @State private var offset: CGFloat = 0

    var imageList = ["hero", "hero_2", "hero_3"]
    var onboardingTitleRow1 = ["Explore", "Find", "Book"]
    var onboardingTitleRow2 = ["The Beautiful", "Your Perfect", "Appointment"]
    var onboardingTitleRow3 = ["World!", "Tickets To Fly", "in Easiest Way!"]

    init() {
        pageNumber = 0
    }

    var body: some View {
        VStack(spacing: 0) {
            
            //OnboardingImage
            Image(itemBuilder(items: imageList))
                .resizable()
                .frame(width: sizeCalculator(theme.deviceSize.width, 91.46), height: sizeCalculator(theme.deviceSize.height, 54.58))
                .padding(.bottom, sizeCalculator(theme.deviceSize.height, 2.83))
                .transition(AnyTransition.opacity.combined(with: AnyTransition.move(edge: .leading)))
                .id(pageNumber)

            //OnboardingIndicator
            HStack(alignment: .top, spacing: sizeCalculator(theme.deviceSize.width, 2.13)) {
                ForEach(0 ..< 3) { i in
                    viewBuilder(numberOfIndicator: i + 1)
                        .animation(.spring(), value: pageNumber)
                }
            }
            .frame(width: sizeCalculator(theme.deviceSize.width, 31.73), height: sizeCalculator(theme.deviceSize.height, 0.73))
            .padding(.bottom, sizeCalculator(theme.deviceSize.height, 2.95))

            //OnboardingText
            VStack {
                Text(itemBuilder(items: onboardingTitleRow1)).font(theme.fonts.bigTitle)
                    .frame(width: sizeCalculator(theme.deviceSize.width, 91.46), alignment: .leading)
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)

                Text(itemBuilder(items: onboardingTitleRow2))
                    .frame(width: sizeCalculator(theme.deviceSize.width, 91.46), alignment: .leading)
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)

                Text(itemBuilder(items: onboardingTitleRow3))
                    .frame(width: sizeCalculator(theme.deviceSize.width, 91.46), alignment: .leading)
                    .minimumScaleFactor(0.5)
                    .lineLimit(1)
            }
            .frame(width: sizeCalculator(theme.deviceSize.width, 91.46), height: sizeCalculator(theme.deviceSize.height, 17.73), alignment: .leading)
            .font(theme.fonts.bigTitle)
            .minimumScaleFactor(0.5)
            .lineLimit(1)
            .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
            .animation(.easeInOut, value: pageNumber)
            .id(pageNumber)

            //OnboardingButtons
            HStack(spacing: sizeCalculator(theme.deviceSize.width, 2.13)) {
                Button(action: {
                    withAnimation {
                        pageNumber = 0
                    }
                }) {
                    Text("Skip")
                        .font(theme.fonts.titleSmaller)
                        .foregroundStyle(Color(red: 37 / 255, green: 40 / 255, blue: 49 / 255))
                        .minimumScaleFactor(0.5)
                        .lineLimit(1)
                }.frame(width: sizeCalculator(theme.deviceSize.width, 44.66), height: sizeCalculator(theme.deviceSize.height, 5.91))

                passButton(pageNumber: $pageNumber)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
            .padding(.top, sizeCalculator(theme.deviceSize.height, 3.94))
        }
        .gesture(
            DragGesture()
                .onChanged { gesture in
                    offset = gesture.translation.width
                }
                .onEnded { gesture in
                    if gesture.translation.width < -50, pageNumber < 2 {
                        withAnimation {
                            pageNumber += 1
                        }
                    } else if gesture.translation.width > 50, pageNumber > 0 {
                        withAnimation {
                            pageNumber -= 1
                        }
                    }
                    offset = 0
                }
        )
    }

    func itemBuilder(items: [String]) -> String {
        if pageNumber % 3 == 0 { return items[0] }
        else if pageNumber % 3 == 1 { return items[1] }
        else { return items[2] }
    }

    func viewBuilder(numberOfIndicator: Int) -> some View {
        Group {
            if numberOfIndicator == 1 {
                if pageNumber % 3 == 0 { selectedPageIndicator() }
                else { unselectedPageIndicator() }
            } else if numberOfIndicator == 2 {
                if pageNumber % 3 == 1 { selectedPageIndicator() }
                else { unselectedPageIndicator() }
            } else {
                if pageNumber % 3 == 2 { selectedPageIndicator() }
                else { unselectedPageIndicator() }
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView().environment(\.appTheme, AppTheme())
    }
}

struct selectedPageIndicator: View {
    @Environment(\.appTheme) var theme
    var body: some View {
        Rectangle()
            .foregroundColor(.BC_80)
            .frame(width: sizeCalculator(theme.deviceSize.width, 16.26), height: sizeCalculator(theme.deviceSize.height, 0.73))
            .cornerRadius(14.0)
    }
}

struct unselectedPageIndicator: View {
    @Environment(\.appTheme) var theme
    var body: some View {
        Rectangle()
            .foregroundColor(.BC_10)
            .frame(width: sizeCalculator(theme.deviceSize.width, 5.59), height: sizeCalculator(theme.deviceSize.height, 0.73))
            .cornerRadius(14.0)
    }
}

struct passButton: View {
    @Environment(\.appTheme) var theme
    @Binding var pageNumber: Int

    var body: some View {
        Button(action: {
            withAnimation {
                if pageNumber == 2 {
                    // Burada ne yapılacağını belirtmeniz gerekiyor
                } else {
                    pageNumber += 1
                }
            }
        }) {
            Text(textBuilder())
            Image(systemName: "arrow.right.circle.fill")
        }
        .frame(width: sizeCalculator(theme.deviceSize.width, 44.66), height: sizeCalculator(theme.deviceSize.height, 5.91))
        .foregroundColor(.white)
        .background(theme.blueColors.bc80)
        .cornerRadius(10)
        .animation(.easeInOut, value: pageNumber)
    }

    func textBuilder() -> String {
        if pageNumber == 2 {
            return "Get Started"
        } else {
            return "Next"
        }
    }
}

//Burada Kaldık extract edilicek viewlar

/* struct OnboardingImage : View {
    @Environment(\.appTheme) var theme
    @Binding var pageNumber: Int
    var imageList : Array<String>
    var itemBuilder : (_ items:Array<String>) -> String
    
    init(pageNumber: Int, imageList: Array<String>, itemBuilder: @escaping (_: Array<String>) -> String) {
        self.pageNumber = pageNumber
        self.imageList = imageList
        self.itemBuilder = itemBuilder
    }
    
    var body: some View {
        Image(itemBuilder(imageList))
            .resizable()
            .frame(width: sizeCalculator(theme.deviceSize.width, 91.46), height: sizeCalculator(theme.deviceSize.height, 54.58))
            .padding(.bottom, sizeCalculator(theme.deviceSize.height, 2.83))
            .transition(AnyTransition.opacity.combined(with: AnyTransition.move(edge: .leading)))
            .id(pageNumber)
    }
} */
