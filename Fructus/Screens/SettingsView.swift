//
//  SettingsView.swift
//  Fructus
//
//  Created by Bruno Mazzocchi on 18/10/24.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox (
                        label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                        
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, and vitamins A, C, and E.")
                                .font(.footnote)
                        }
                    }
                }
                .padding(.bottom, 10)
                GroupBox (
                    label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                ) {
                    Divider().padding(.vertical, 8)
                    Text("If you wish, you can restart the application by toggle the switch in this box. This way it starts the onboarding process and you will see the welcome screen again.")
                        .padding(.vertical, 8)
                        .frame(minHeight: 60)
                        .layoutPriority(1)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    Toggle(isOn: $isOnboarding) {
                        if isOnboarding {
                            Text("Restarted".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                        } else {
                            Text("Restart".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding()
                    .background(
                        Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    )
                }
                
                .padding(.bottom, 10)
                
                GroupBox {
                    Divider().padding(.vertical, 4)
                    SettingsRowView(name: "Developer", content: "John / Jane")
                    
                    SettingsRowView(name: "Designer", content: "Me")
                    
                    SettingsRowView(name: "Compatibility", content: "iOS 17+")
                    
                    SettingsRowView(name: "Twitter", linkLabel: "@Robert",
                                    linkDestination: "https://twitter.com/Robert"
                    )
                }
                .navigationBarTitle(Text("Settigns"), displayMode: .large)
                .navigationBarItems(
                    trailing: Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
                )
                
                .padding(.bottom, 10)
            }
        }
    }
}

#Preview {
    SettingsView()
}
