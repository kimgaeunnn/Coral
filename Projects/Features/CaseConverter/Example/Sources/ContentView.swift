// The MIT License (MIT)
//
// https://github.com/DevYeom/Coral

import CaseConverter
import SwiftUI

struct CaseConverterExampleView: View {

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            CaseConverter.hello()
        }
    }

}

struct CaseConverterExampleView_Previews: PreviewProvider {

    static var previews: some View {
        CaseConverterExampleView()
    }

}
