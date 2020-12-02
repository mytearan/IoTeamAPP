/// Copyright (c) 2020 Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.


import SwiftUI

//Create a UIHostingController class that hosts your SwiftUI view
@available(iOS 13.0, *)
class SwiftUIViewHostingController: UIHostingController<ContentView> {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: ContentView())
    }
}

@available(iOS 13.0, *)
let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
// password
let storedUsername = "Myusername"
let storedPassword = "Mypassword"


@available(iOS 13.0, *)
struct ContentView : View {
  @available(iOS 13.0.0, *)
  @State var username: String = ""
  @State var password: String = ""
  @State var authenticationDidFail: Bool = false
  @State var authenticationDidSucceed: Bool = false
  @available(iOS 13.0, *)
  @ObservedObject var keyboardResponder = KeyboardResponder()
  
  var body: some View {
    NavigationView {
        ZStack {
            VStack {
              UserImage()
              WelcomeText()
              UsernameTextField(username: $username)
              PasswordSecureField(password: $password)
              if authenticationDidFail {
                Text("Information not correct. Try again.")
                    .offset(y: -10)
                    .foregroundColor(.red)
              }
              Button(action: {
                    if self.username == storedUsername && self.password == storedPassword {
                        self.authenticationDidSucceed = true
                        self.authenticationDidFail = false
                    }
                    else {
                      self.authenticationDidFail = true
                    }
              }) {
                LoginButtonContent()
              }
            }
            /*
            .background(
              LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all))
            Spacer() */
              .padding()
              if authenticationDidSucceed {
                Text("Login succeeded!")
                  .font(.headline)
                  .frame(width: 250, height: 80)
                  .background(Color.green)
                  .cornerRadius(20.0)
                  .foregroundColor(.white)
                  .animation(Animation.default)
            }
          }
    }
    .offset(y: -keyboardResponder.currentHeight*0.9)
  }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
  @available(iOS 13.0.0, *)
  static var previews: some View {
    ContentView()
  }
}
#endif

struct WelcomeText: View {
  @available(iOS 13.0.0, *)
  var body: some View {
    Text("Nurse Log In")
      .font(.largeTitle)
      .fontWeight(.semibold)
      .padding(.bottom, 20)
  }
}

struct UserImage: View {
  @available(iOS 13.0.0, *)
  var body: some View {
    Image("userImage")
      .resizable()
      .aspectRatio(contentMode: .fill)
      .frame(width: 150, height: 150)
      .clipped()
      .cornerRadius(150)
      .padding(.bottom, 75)
  }
}

struct LoginButtonContent: View {
  @available(iOS 13.0.0, *)
  var body: some View {
    Text("LOGIN")
      .font(.headline)
      .foregroundColor(.white)
      .padding()
      .frame(width: 220, height: 60)
      .background(Color.blue)
      .cornerRadius(15.0)
  }
}

@available(iOS 13.0, *)
struct UsernameTextField: View {
  @Binding var username: String
  var body: some View {
    return TextField("Username", text: $username)
      .padding()
      .background(lightGreyColor)
      .cornerRadius(5.0)
      .padding(.bottom, 20)
  }
}

@available(iOS 13.0, *)
struct PasswordSecureField: View {
  @Binding var password: String
  var body: some View {
    SecureField("Password", text: $password)
      .padding()
      .background(lightGreyColor)
      .cornerRadius(5.0)
      .padding(.bottom, 20)
  }
}

/* func loginTapped(_ sender: UIButton) {
    // ...
    // after login is done, maybe put this in the login web service completion block

    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  if #available(iOS 13.0, *) {
    let mainTabBarController = storyboard.instantiateViewController(identifier: "MainTabBarController")
    (UIApplication.shared.delegate as? AppDelegate)?.changeRootViewController(mainTabBarController)
  } else {
    // Fallback on earlier versions
  }
  } */

