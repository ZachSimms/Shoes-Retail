import SwiftUI

struct NavigationBarItemView: View {
    let image: String
    
    var body: some View {
        Button(action: {}, label: {
            Image(systemName: image)
                .font(.title)
                .foregroundColor(Color(.label))
        })
    }
}

struct NavigationBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarItemView(image: "person.crop.circle")
    }
}
