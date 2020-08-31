struct Shoe: Hashable {
    let price: Int
    let brand: String
    let name: String
    let detail: String
    let image: String
    var favorited: Bool
}

let shoes = [
    Shoe(price: 100, brand: "Nike", name: "Air Jordan 1 Low SE", detail: "Men's Shoe", image: "shoe", favorited: false),
    Shoe(price: 200, brand: "Nike", name: "Kobe AD NXT", detail: "Basketball Shoe", image: "shoe", favorited: false),
    Shoe(price: 220, brand: "Nike", name: "Nike Air Vapormax 2020 FK", detail: "Women's Shoe", image: "shoe", favorited: false),
    Shoe(price: 100, brand: "Nike", name: "Nike Blazer Mid '77", detail: "Women's Shoe", image: "shoe", favorited: false),
    Shoe(price: 100, brand: "Adidas", name: "SUPERNOVA SHOES", detail: "WOMEN'S • RUNNING", image: "shoe", favorited: false),
    Shoe(price: 49, brand: "Adidas", name: "PUREMOTION SHOES", detail: "WOMEN'S • ESSENTIALS", image: "shoe", favorited: false),
    Shoe(price: 200, brand: "Adidas", name: "ZX 2K 4D SHOES", detail: "ORIGINALS", image: "shoe", favorited: false),
    Shoe(price: 125, brand: "Puma", name: "PUMA RS Dreamer", detail: "Men's", image: "shoe", favorited: false),
    Shoe(price: 975, brand: "Balenciaga", name: "Pink Triple S Sneakers", detail: "Low-top", image: "shoe", favorited: false),
    Shoe(price: 735, brand: "Balenciaga", name: "Black & Pink Speed Sneakers", detail: "High-top", image: "shoe", favorited: false),
    Shoe(price: 120, brand: "Converse", name: "Chuck Taylor All Star GR 82", detail: "WOMEN'S HIGH TOP SHOE", image: "shoe", favorited: false),
    Shoe(price: 75, brand: "Converse", name: "Chuck Taylor All Star CX", detail: "UNISEX HIGH TOP SHOE", image: "shoe", favorited: false),
]

