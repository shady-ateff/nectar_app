class ProductItemModel {
  final String imageUrl;
  final String name;
  final String description;
  final double price;
  final String wieght;

  ProductItemModel({
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
    required this.wieght,
  });
}

List<ProductItemModel> exclusiveProductItems = [
  ProductItemModel(
    imageUrl: 'assets/images/Organic Bananas.png',
    name: 'Organic Banana',
    description: 'Fresh organic bananas, perfect for smoothies and snacks.',
    price: 12.99,
    wieght: '7pcs',
  ),
  ProductItemModel(
    imageUrl: 'assets/images/Red Apple.png',
    name: 'Red Apples',
    description: 'Fresh and juicy red apples, perfect for snacking.',
    price: 3.49,
    wieght: '250g',
  ),
  ProductItemModel(
    imageUrl: 'assets/images/Ginger.png',
    name: 'Ginger',
    description: 'Fresh ginger root, great for cooking and health benefits.',
    price: 4.99,
    wieght: '1L',
  ),
  ProductItemModel(
    imageUrl: 'assets/images/cookingOil.png',
    name: 'Olive Oil',
    description: 'Premium quality olive oil, perfect for cooking and dressing.',
    price: 5.99,
    wieght: '1kg',
  ),
];

List<ProductItemModel> allHealthyProducts = [
  ProductItemModel(
    imageUrl: 'https://dtgxwmigmg3gc.cloudfront.net/imagery/assets/derivations/icon/512/512/true/eyJpZCI6IjM4ZDJjMzk1NDFhODhmMTQ0Y2NhMmIxZTVmZTVlNTg3Iiwic3RvcmFnZSI6InB1YmxpY19zdG9yZSJ9?signature=e6a120076c6c103f7a00b8af63d9dc97424f57242805c8b96747a0033e4ffd95',
    name: 'Organic Bananas',
    description:
        'Sweet and creamy bananas, perfect for a quick snack or smoothie.',
    price: 3.99,
    wieght: '1 kg',
  ),
  ProductItemModel(
    imageUrl: 'https://static.vecteezy.com/system/resources/previews/024/526/179/non_2x/apple-isolated-red-apple-on-transparent-background-with-full-depth-of-field-apple-png.png',
    name: 'Red Apples',
    description: 'Crisp, juicy red apples, great for a healthy, crunchy bite.',
    price: 4.49,
    wieght: '750g',
  ),

  // And so on for each of the items...
  ProductItemModel(
    imageUrl: 'https://dtgxwmigmg3gc.cloudfront.net/imagery/assets/derivations/icon/512/512/true/eyJpZCI6IjFlM2E4MGNkN2E5ZDVmMjg2ZDhlMWZkZDBiYTZhYTk3LmpwZyIsInN0b3JhZ2UiOiJwdWJsaWNfc3RvcmUifQ?signature=bfd92f4d078b7cf038307e45edf8d8915bf427773afd721bf28f9295837c9c7e',
    name: 'Avocado',
    description: 'Creamy and rich Hass avocados, ideal for toast or guacamole.',
    price: 2.99,
    wieght: '1 pc',
  ),
  ProductItemModel(
    imageUrl: 'https://www.halfyourplate.ca/wp-content/uploads/2022/10/Spinach-PNG.png',
    name: 'Spinach',
    description:
        'Fresh, nutrient-packed spinach leaves for salads and cooking.',
    price: 2.29,
    wieght: '200g',
  ),
  ProductItemModel(
    imageUrl: 'https://vandykblueberries.ca/cdn/shop/t/4/assets/blueberry-group.png?v=25238529168201351311590426912',
    name: 'Blueberries',
    description: 'Small and sweet blueberries, full of antioxidants.',
    price: 5.99,
    wieght: '250g',
  ),
  ProductItemModel(
    imageUrl: 'https://salmon-farm.com/new/wp-content/uploads/2021/12/salmon-fillet-skin-on.webp',
    name: 'Salmon Fillet',
    description: 'High-quality salmon fillet, rich in omega-3 fatty acids.',
    price: 15.99,
    wieght: '500g',
  ),
  ProductItemModel(
    imageUrl: 'https://panamarbakery.com/public/Image/2021/3/161539389912959_1-hogaza-integral-de-grano-entero-340g_Galeria.png',
    name: 'Whole Grain Bread',
    description: 'Hearty whole grain bread, a great source of fiber.',
    price: 4.99,
    wieght: '1 loaf',
  ),
  ProductItemModel(
    imageUrl: 'https://www.traderjoes.com/content/dam/trjo/products/m20303/69169.png/jcr:content/renditions/cq5dam.web.1280.1280',
    name: 'Greek Yogurt',
    description: 'Creamy Greek yogurt, high in protein and probiotics.',
    price: 3.50,
    wieght: '500g',
  ),
  ProductItemModel(
    imageUrl: 'https://mcprod.hyperone.com.eg/media/catalog/product/cache/8d4e6327d79fd11192282459179cc69e/6/2/6223004760556-1.png',
    name: 'Quinoa',
    description: 'A versatile grain, perfect for salads, bowls, and more.',
    price: 7.99,
    wieght: '1 kg',
  ),
  ProductItemModel(
    imageUrl: 'https://images.ctfassets.net/58gcftnkb1ht/1wBWRWlGCMFNGk74Frn7ue/ed296dba841c54eb4061e3368653e7d9/Sweeet_Potato.png?h=800&fl=progressive&q=50',
    name: 'Sweet Potatoes',
    description: 'Vibrant sweet potatoes, packed with vitamins and flavor.',
    price: 3.19,
    wieght: '1 kg',
  ),
  ProductItemModel(
    imageUrl: 'https://buybc.gov.bc.ca/app/uploads/sites/386/2024/03/Broccoli_337250509.png',
    name: 'Broccoli',
    description: 'Fresh broccoli florets, a classic healthy vegetable.',
    price: 2.79,
    wieght: '500g',
  ),

];
