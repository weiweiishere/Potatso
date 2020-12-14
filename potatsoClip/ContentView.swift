//
//  ContentView.swift
//  PotatsoClip
//
//  Created by WeiWei on 11/12/2020.
//  Copyright © 2020 TouchingApp. All rights reserved.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext

    var body: some View {
        Button(action:{
            if let url = URL(string:"itms-apps://apple.com/app/id839686104"){
                UIApplication.shared.open(url)
            }
        }){
            Text("Download Potatso")
                .font(.title)
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
        }
        Image("potatsoScreenShot")
            .resizable()
            .scaledToFit()
            .border(Color.blue, width: 2)
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
