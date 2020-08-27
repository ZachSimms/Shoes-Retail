import SwiftUI

struct CategoriesButtonView: View {
    let categories: [String]
    
    var body: some View {
        HStack {
            ForEach(categories, id: \.self) { category in
                Button(action: {}, label: {
                    Text(category)
                        .fontWeight(category == categories.first ? .bold : .regular)
                        .padding(.horizontal, 6)
                        .foregroundColor(category == categories.first ? Color(.label) : .secondary)
                })
            }
        }
    }
}

struct CategoriesButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesButtonView(categories: ["Nike", "Adidas", "Puma", "Balenciaga", "Converse"])
    }
}
