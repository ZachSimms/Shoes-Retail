import SwiftUI

struct GridCellView: View {
    let shoe: Shoe
    
    var body: some View {
        VStack {
            HStack {
                Text("$\(shoe.price)")
                    .font(.body)
                    .bold()
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "heart")
                })
            }
            .padding([.top, .horizontal])
            
            Image(shoe.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
            
            Text(shoe.name)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            
            Text(shoe.detail)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.leading, .bottom])
        }
        .frame(width: 180, height: 180)
        .background(Color(.secondarySystemBackground))
        .foregroundColor(Color(.label))
        .cornerRadius(18)
    }
}

struct GridCellView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GridCellView(shoe: Shoe(price: 100, brand: "Nike", name: "Air Jordan 1 Low SE", detail: "Men's Shoe", image: "shoe", favorited: false))
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
            GridCellView(shoe: Shoe(price: 100, brand: "Nike", name: "Air Jordan 1 Low SE", detail: "Men's Shoe", image: "shoe", favorited: false))
                .previewLayout(.sizeThatFits)
        }
    }
}
