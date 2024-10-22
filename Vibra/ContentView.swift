import SwiftUI

struct ContentView: View {
    @State private var imageOffset: CGFloat = 500
    
    var body: some View {
        NavigationView {
            VStack(spacing: 50) {
                // Title
                Text("Welcome to Vibra")
                    .font(.title)
                    .padding(.top, 50)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 66 / 255, green: 81 / 255, blue: 86 / 255)) // Dark color
                
                // Subtitle
                Text("Organize and Optimize Every Aspect of Your Daily Routine")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 66 / 255, green: 81 / 255, blue: 86 / 255)) // Dark color
                    .padding(.horizontal, 40)
                
                // Image (wave circle)
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 250)
                    .padding(.top, 70)
                    .offset(y: imageOffset)
                    .onAppear {
                        withAnimation(.easeOut(duration: 1.5)){self.imageOffset = 0
                        }
                    }
                
                Spacer()
                
                // Button
                NavigationLink(destination: SignInView()) {
                    Text("Let’s Get Started")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(red: 144 / 255, green: 238 / 255, blue: 144 / 255, opacity: 0.33))  // Semi-transparent green
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .padding(.horizontal, 50)
                        .padding(.bottom, 40)
                }
            }
            .padding(.top, 50)
            .background(Color(red: 240 / 255, green: 240 / 255, blue: 240 / 255))  // Light background color
            .edgesIgnoringSafeArea(.all)
        }
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
