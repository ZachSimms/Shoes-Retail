import SwiftUI

struct GridView: View {
    @Binding var filterByBrand: String
    @Binding var filterBySearch: String
    
    let layout: [GridItem]
    let shoes: [Shoe]
    
    var body: some View {
        LazyVGrid(columns: layout, spacing: 32) {
            if !filterBySearch.isEmpty {
                ForEach(shoes.filter { $0.name.lowercased().contains(filterBySearch.lowercased()) && $0.brand == filterByBrand || $0.detail.lowercased().contains(filterBySearch.lowercased()) && $0.brand == filterByBrand }, id: \.name) { shoe in
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            GridCellView(shoe: shoe)
                        })
                }
            } else {
                ForEach(shoes.filter { $0.brand.contains(filterByBrand) }, id: \.name) { shoe in
                    NavigationLink(
                        destination: Text("Destination"),
                        label: {
                            GridCellView(shoe: shoe)
                        })
                }
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(filterByBrand: Binding.constant("Nike"), filterBySearch: Binding.constant(""), layout: [
            GridItem(.adaptive(minimum: 180)),
        ], shoes: shoes)
    }
}
