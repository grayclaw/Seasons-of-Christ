//
//  SwipeableSuggestion.swift
//  Christmas Celebration
//
//  Created by Brian Homer Jr on 11/25/25.
//

import SwiftUI

struct SwipeableTextView: View {
    @State private var suggestions = [
        "Morning workout",
        "Read for 30 minutes",
        "Call a friend",
        "Drink 8 glasses of water",
        "Practice meditation"
    ]
    
    @State private var currentIndex = 0
    @State private var offset: CGFloat = 0
    @State private var isCrossedOut = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Daily Suggestions")
                .font(.title2)
                .fontWeight(.semibold)
            
            if suggestions.isEmpty {
                Text("No more suggestions!")
                    .foregroundColor(.gray)
                    .padding()
            } else {
                // Swipeable card
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color.blue.opacity(0.1))
                        .frame(height: 120)
                    
                    Text(suggestions[currentIndex])
                        .font(.title3)
                        .multilineTextAlignment(.center)
                        .padding()
                        .strikethrough(isCrossedOut, color: .red)
                        .foregroundColor(isCrossedOut ? .gray : .primary)
                }
                .offset(x: offset)
                .gesture(
                    DragGesture()
                        .onChanged { gesture in
                            offset = gesture.translation.width
                        }
                        .onEnded { gesture in
                            withAnimation {
                                if abs(gesture.translation.width) > 100 {
                                    // Swipe detected
                                    if gesture.translation.width > 0 {
                                        // Swipe right - go to previous
                                        moveToPrevious()
                                    } else {
                                        // Swipe left - go to next
                                        moveToNext()
                                    }
                                }
                                offset = 0
                            }
                        }
                )
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        isCrossedOut = true
                    }
                    
                    // Remove after a short delay
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        withAnimation {
                            removeCurrentItem()
                        }
                    }
                }
                
                // Navigation indicators
                HStack(spacing: 8) {
                    ForEach(0..<suggestions.count, id: \.self) { index in
                        Circle()
                            .fill(index == currentIndex ? Color.blue : Color.gray.opacity(0.3))
                            .frame(width: 8, height: 8)
                    }
                }
                .padding(.top, 8)
                
                // Counter
                Text("\(currentIndex + 1) of \(suggestions.count)")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding()
    }
    
    private func moveToNext() {
        isCrossedOut = false
        if currentIndex < suggestions.count - 1 {
            currentIndex += 1
        } else {
            currentIndex = 0 // Loop back to start
        }
    }
    
    private func moveToPrevious() {
        isCrossedOut = false
        if currentIndex > 0 {
            currentIndex -= 1
        } else {
            currentIndex = suggestions.count - 1 // Loop to end
        }
    }
    
    private func removeCurrentItem() {
        suggestions.remove(at: currentIndex)
        isCrossedOut = false
        
        if !suggestions.isEmpty {
            // Adjust index if needed
            if currentIndex >= suggestions.count {
                currentIndex = suggestions.count - 1
            }
        }
    }
}

#Preview {
    SwipeableTextView()
}
