//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by AT5HK on 12/31/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    
    //state object is an observedObject that can publishes changes in its properties
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [  GridItem(.flexible()),
                                    GridItem(.flexible()),
                                    GridItem(.flexible()) ]
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
                .navigationTitle("🍎 Frameworks")
                .sheet(isPresented: $viewModel.isShowingDetailView) {
                    FrameworkDetailView(framework: viewModel.selectedFramework!, isShowingDetailView: $viewModel
                        .isShowingDetailView)
                }
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
