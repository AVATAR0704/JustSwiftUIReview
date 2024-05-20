//
//  OnBoardingView.swift
//  JustSwiftUIReview
//
//  Created by Samandar on 16/05/24.
//

import SwiftUI

struct OnBoardingViewG: View {
    
    //Welcomne page
    //Create name
    //create username
    //create password
    //choose age
    //Choose gender
    
    @State var nameofUser: String = ""
    
    
    @State var currentState: Int = 1
    
    
    
    
    var body: some View {
        
        
        ZStack {
            
            
            VStack {
                
                Spacer()
                
                
                switch currentState {
                case 0:
                    
                   welcomePage
                    
                case 1:
                    namePage
                case 2:
                    Text("Age Page")
                case 3:
                    Text("gender Page")
                case 4:
                    Text("username Page")
                case 5:
                    Text("Password Page")
                    
                default:
                    RoundedRectangle(cornerRadius: 25)
                }
                
                
                
                
                Spacer()
                
                Spacer()
                nextbuttonView
                
                RoundedRectangle(cornerRadius: 25)
                    .foregroundColor(.white)
                    .frame(height: 1)
                
                
                HStack {
                    
                   Text("Haven't yet account?")
                        .foregroundColor(.white)
                    
                    signInButton

                }
                
            }//Vstack
            .padding()
            
        }//zStack
    }//body
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingViewG()
            .background(Color("CustomColor"))
    }
}


extension OnBoardingViewG {
    
    
    
    
    
    //Main Next Button
    private var nextbuttonView: some View {
        
        Button {
            
        } label: {
            Text("Next")
                .padding()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(10)
                .padding(.bottom)
                
        }
        
    }
    
    //Main Sign in Button
    private var signInButton: some View {
        
        Button {
            
        } label: {
            Text("Sign In")
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        
    }
    
    //MARK: Welcome Page
    private var welcomePage: some View {
        
        VStack {
           imageofWelcome
           
           textofwelcome
            
           textfullWelcome
        }
        
    }
    
    private var imageofWelcome: some View {
            Image(systemName: "globe.central.south.asia.fill")
               .resizable()
               .scaledToFit()
               .font(.largeTitle)
               .frame(width: 200, height: 100)
               .foregroundColor(.white)

    }
    
    private var textofwelcome: some View {
        Text("TTU")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
    
    private var textfullWelcome: some View {
        Text("This app is produced by developer in order to explain, travel and journey to Uzbekistan's magestic and hictoric palaces. By signning Up it you can have unrepeateble impressions. Enjoy your trip🇺🇿🥳")
            .font(.headline)
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            
        
    }
    
    //MARK: Name Page
    private var namePage: some View {
        VStack {
            namelabel
            
            userNameTextField
        }
    }
    
    
    
    private var namelabel: some View {
        Text("Please, Enter your name")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
    
    private var userNameTextField: some View {
        TextField("username", text: $nameofUser)
            .padding()
            .background(.white)
            .cornerRadius(10)
    }
    
   
    
}


