class Flower {
  final String name;
  final double price;
  final String imageUrl;
  final String description;
  int quantity;

  Flower({required this.name, required this.price, required this.imageUrl,required this.description, this.quantity = 1,});
}

List<Flower> flowers = [
  Flower(name: 'Rose', price: 20.0, imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHDy8wb6mfLyM2AqU4vieTa0rvPo3BkDjvFg&usqp=CAU',
      description: 'Roses are erect, climbing, or trailing shrubs, the stems of which are usually copiously armed with prickles of various shapes and sizes, commonly called thorns. The leaves are alternate and pinnately compound (i.e., feather-formed), usually with oval leaflets that are sharply toothed'),
  Flower(name: 'Lily', price: 15.0, imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRARwEGy7R-tYf8S3Yj_x-Cs_TZ4y-weqLwsQ&usqp=CAU',
      description: 'Lilies typically feature 6-tepaled flowers in a variety of shapes (trumpet, funnel, cup, bell, bowl or flat), sometimes nodding, sometimes with reflexed petals, atop stiff, unbranched stems (1-8 tall) clothed with linear to elliptic leaves. Flowers are often fragrant and come in a broad range of colors except blue'),
  Flower(name: 'Tulip', price: 10.0, imageUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqLRz220yfFAOVjCXOJuDFxZc1A8lGNMHeYw&usqp=CAU',
  description: 'Tulips are erect flowers with long, broad, parallel-veined leaves and a cup-shaped, single or double flower at the tip of the stem. Colors of the flowers can range anywhere from red to yellow to white. Some tulips are varicolored as a result of a viral disease carried and transferred to the plants by aphids.'),
  Flower(name: 'jasmine ', price: 10.0, imageUrl:'https://enviearth.com/wp-content/uploads/2020/04/Jasmine-plants.jpg',
  description: 'Jasmine is a climbing vine in the olive family found throughout tropical areas of Europe, Asia and Africa. The rose-like blooms of the plant are prized for their beauty. '),
  Flower(name: 'Orchid', price: 21.0, imageUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEyl-OIH8AZr9Lvj1q2BDYkUCAMAux3VdMpw&usqp=CAU',
  description: ' Orchid flowers have three sepals, three petals and a three-chambered ovary. The three sepals and two of the petals are often similar to each other but one petal is usually highly modified, forming a "lip" or labellum.'),
  Flower(name: 'Lavender ', price: 15.0, imageUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR8uXxn817d9aBIJJVcbBDQoHTE4QfXLQPMQ&usqp=CAU',
  description: ' It is a beautiful aromatic shrub with average height of 2 feet (60 cm). It produces purple flowers, which contain high levels of essential oil. The essential oil of lavender is recognized globally as a respected commodity. It has several medicinal and other uses.'),
  Flower(name: 'Sunflower  ', price: 13.0, imageUrl:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7sdtUlwp9mpOxh3N-b-_LbBKGbbCAPfXczA&usqp=CAU',
  description: 'The sunflower is a familiar plant that has the distinction of being the only widely used crop species that originated in North America. Although Native Americans domesticated the plant and selected for plants with single heads and larger seeds, its initial use after being introduced into Europe was primarily as an ornamental plant in gardens'),


];