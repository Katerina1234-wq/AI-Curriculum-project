import SwiftUI

struct HomeView: View {
    
    @State private var topic = ""
    
    var body: some View {
        
        ZStack {
            
            // Background color
            Color(.systemGray6)
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                
                Spacer().frame(height: 30)
                
                // Title
                Text("What do you want\nto learn today?")
                    .font(.system(size: 34))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                
                // Input field
                VStack(alignment: .leading) {
                    
                    Text("Enter topic:")
                        .foregroundColor(.gray)
                    
                    TextField("For example: “Planet life”", text: $topic)
                        .padding()
                        .background(Color.white.opacity(0.6))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color(red: 0.18, green: 0.36, blue: 0.47), lineWidth: 2)
                        )
                }
                .padding(.horizontal, 30)
                
                // Generate button
                Button(action: {
                    print("Generate curriculum")
                }) {
                    Text("Generate curriculum")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 260)
                        .background(Color(red: 0.18, green: 0.36, blue: 0.47))
                        .cornerRadius(12)
                }
                
                Divider()
                    .padding(.horizontal, 30)
                
                // Topics
                VStack(spacing: 20) {
                    
                    Text("Popular topics:")
                        .font(.title3)
                        .foregroundColor(.black)
                    
                    HStack(spacing: 20) {
                        topicButton("AI Ethics")
                        topicButton("Planets")
                    }
                    
                    HStack(spacing: 20) {
                        topicButton("Science")
                        topicButton("Games")
                    }
                }
                
                Spacer()
                
                // Bottom navigation bar
                HStack(spacing: 45) {
                    
                    Image("check_icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    
                    Image("home_icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    
                    Image("book_icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }
                .padding(11)
                .frame(width: 300)
                .background(
                    LinearGradient(
                        colors: [
                            Color(red: 0.60, green: 0.78, blue: 0.85),
                            Color(red: 0.74, green: 0.86, blue: 0.90)
                        ],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .cornerRadius(40)
                
                Spacer().frame(height: 10)
            }
        }
    }
}

func topicButton(_ title: String) -> some View {
    Text(title)
        .foregroundColor(.white)
        .padding()
        .frame(width: 130)
        .background(Color(red: 0.40, green: 0.55, blue: 0.62))
        .cornerRadius(12)
}

#Preview {
    HomeView()
}
