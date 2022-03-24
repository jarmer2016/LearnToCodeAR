//
//  DisclaimerFile.swift
//  DissertationProject
//
//  Created by James Armer on 28/04/2021.
//

import SwiftUI



struct DisclaimerFile: View {
    
//    @State var filter: FilterItem
    
    @State var continueActive = false
    
    @State var disclaimer1 = false
    @State var disclaimer2 = false
    @State var disclaimer3 = false
    
    @State var continueButtonState = true

    var title = "jsbdgbsdg"
    
    
    @State var filters = [
    
        FilterItem(title: "I agree to take part in this study", checked: false),
        FilterItem(title: "I understand that I may withdraw from this study at any time", checked: false),
        FilterItem(title: "I agree to being audio recording during questioning", checked: false),
//        FilterItem(title: "Highest Price", checked: false),
//        FilterItem(title: "Most Favourite", checked: false),
//        FilterItem(title: "Available Now", checked: false),
    ]
    
    
    
    func checkStates() {
       if filters[0].checked == true {
            disclaimer1 = true
        print(disclaimer1)
        }
       if filters[2].checked == true {
            disclaimer2 = true
        print(disclaimer2)
        }
       if filters[1].checked == true {
            disclaimer3 = true
        print(disclaimer3)
        }
    }
    
    func activateContinueButton() {
        if disclaimer1, disclaimer2, disclaimer3 == true {
            continueButtonState = false
        }
    }
    
    func checkFilter1() {
        if filters[0].checked == true {
        continueButtonState = false
        }
    }
    
    
    
    var body: some View {
        
        
        
        VStack{
            
            Text("Disclaimer")
                .font(.system(size: 60))
                .fontWeight(.heavy)
                .padding(.bottom, 30)
            
            Text("Please confirm that you have read and understand the information below\n by tapping the checkmarks")
                .multilineTextAlignment(.center)
            Spacer()
            ForEach(filters){filter in
                CardView(continueButtonState: $continueButtonState, disclaimer1: $disclaimer1, disclaimer2: $disclaimer2, disclaimer3: $disclaimer3, filter: filter)
            }
            
            Spacer()
            Button {
                NotificationCenter.default.post(name: NSNotification.Name("dismissSwiftUI"), object: nil)
            } label: {
                Text("Continue")
            }
            .disabled(continueButtonState)
            //.padding(.top,50)
//            .background(Color(.systemBlue))
////            .foregroundColor(.white)
//            .clipShape(Capsule())
//            .cornerRadius(12)
       .font(.system(size: 24))
            Spacer()
        
        }
        .padding(.top,50)
        .padding(.bottom, 50)
        
        
    }
    
}
//
//struct Home: View {
//    @State var edges = UIApplication.shared.windows.first?.safeAreaInsets
//    @State var showFilter = true
//
//    @State var filters = [
//
//        FilterItem(title: "I agree to take part in this study", checked: false),
//        FilterItem(title: "I understand that I may withdraw from this study at any time", checked: false),
//        FilterItem(title: "I agree to being audio recording during questioning", checked: false),
////        FilterItem(title: "Highest Price", checked: false),
////        FilterItem(title: "Most Favourite", checked: false),
////        FilterItem(title: "Available Now", checked: false),
//    ]
//
//    var body: some View {
//
//
//        VStack{
//            Spacer()
//            VStack(spacing: 18){
//                HStack{
//                    Text("Search By")
//                        .font(.title2)
//                        .fontWeight(.heavy)
//                        .foregroundColor(.black)
//                    Spacer()
//                    Button(action: {
//                        withAnimation{showFilter.toggle()}
//                    },  label: {
//                        Text("Done")
//                            .fontWeight(.heavy)
//                            .foregroundColor(.green)
//                    })
//                }
//                .padding([.horizontal,.top])
//                .padding(.bottom,10)
//
//                ForEach(filters){filter in
//                    CardView(continueButtonState: $continueButtonState, filter: filter)
//                }
//            }
//            .padding(.bottom,10)
//            .padding(.bottom,edges?.bottom)
//            .padding(.top,10)
//            .background(Color.white.clipShape(CustomerCorner(corners: [.topLeft, .topRight])))
//            .offset(y: showFilter ? 0 : UIScreen.main.bounds.height / 2)
//        }
//        .ignoresSafeArea()
//        .background(
//            Color.black.opacity(0.3).ignoresSafeArea()
//                .opacity(showFilter ? 1 : 0)
//
//            //you can also add close here...
//                .onTapGesture(perform: {
//                    withAnimation{showFilter.toggle()}
//                })
//        )
//
        
            
//        VStack(alignment: .center, spacing: 50, content: {
//            Spacer()
//            Text("Participant Disclaimer")
//                .font(.largeTitle)
//            Spacer()
//
//                HStack(alignment: .center, spacing: 50, content: {
//                    Spacer()
//                    Text("The participant understands that they may leave the study at anytime. Information gathered will not be used in the study and will be deleted.")
//                    Spacer()
//                    Button(action: {
//                        print("Top Button Tapped")
//                    }) {
//                        Image(systemName: "checkmark.circle")
//                            .font(.largeTitle)
//                            .foregroundColor(.blue)
//                    }
//                    Spacer()
//                })
//
//
//                HStack(alignment: .center, spacing: 50, content: {
//                    Spacer()
//                    Text("Middle bit of the disclaimer form. jweb fiwb efiweb fiw bfiwh ebf w ihefbw ihb fihwb")
//                    Spacer()
//                    Button(action: {
//                        print("Middle Button Tapped")
//                    }) {
//                        Image(systemName: "checkmark.circle")
//                            .font(.largeTitle)
//                            .foregroundColor(.blue)
//                    }
//                    Spacer()
//                })
//
//
//                HStack(alignment: .center, spacing: 50, content: {
//                    Spacer()
//                    Text("This is a test for a smaller text description. efbni wbe fiwb efi whb efio whb efi wh bfeihwbefi hwb efwe")
//                    Spacer()
//                    Button(action: {
//                        print("Bottom Button Tapped")
//                    }) {
//                        Image(systemName: "checkmark.circle")
//                            .font(.largeTitle)
//                            .foregroundColor(.blue)
//                    }
//                    Spacer()
//                })
//
//
//
//            Spacer()
//            Button(action: {
//                NotificationCenter.default.post(name: NSNotification.Name("dismissSwiftUI"), object: nil)
//            }, label: {
//                Text("Continue")
//            })
//            .padding()
//
//                .background(Color(.systemBlue))
//                .foregroundColor(.white)
//                //.clipShape(Capsule())
//            .cornerRadius(12)
//
//            .font(.system(size: 24))
//
//            Spacer()
//
//
//        })
//
//    }
//}


struct CustomerCorner: Shape {
    
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

struct CardView: View {
    
    @Binding var continueButtonState: Bool
    @Binding var disclaimer1: Bool
    @Binding var disclaimer2: Bool
    @Binding var disclaimer3: Bool
    
    @State var filter: FilterItem
    
    var body: some View{
        
        
        HStack{
            Text(filter.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.gray.opacity(0.7))
            
            Spacer()
            
            ZStack{
                
                Image(systemName: "circle")
                    .font(.system(size: 35))
                    .foregroundColor(.gray.opacity(0.1))
                
                
                if filter.checked{
                    
                    Image(systemName: "checkmark.circle.fill")
                        .font(.system(size: 35))
                        .foregroundColor(.green)
                }
            }
        }
        .padding(.horizontal, 50)                               //This is where you can add the spacing .padding(.horizontal, 50)
        .padding(.top, 15)
        .contentShape(Rectangle())
        .onTapGesture(perform: {
            filter.checked.toggle()
            if filter.title == "I agree to take part in this study" {
                disclaimer1.toggle()
            }
            if filter.title == "I understand that I may withdraw from this study at any time" {
                disclaimer2.toggle()
            }
            if filter.title == "I agree to being audio recording during questioning" {
                disclaimer3.toggle()
            }
            if disclaimer1, disclaimer2, disclaimer3 == true {
                continueButtonState = false
            } else {
                continueButtonState = true
            }
            
        })
        
    }
}

// sample Filters...

struct FilterItem: Identifiable {
    
    var id = UUID().uuidString
    var title: String
    var checked: Bool
}



struct DisclaimerFile_Previews: PreviewProvider {
    static var previews: some View {
        DisclaimerFile()
    }
}
