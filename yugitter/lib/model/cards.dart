// To parse this JSON data, do
//
//     final card = cardFromJson(jsonString);

import 'dart:convert';

List<Card> cardFromJson(String str) => new List<Card>.from(json.decode(str).map((x) => Card.fromJson(x)));

String cardToJson(List<Card> data) => json.encode(new List<dynamic>.from(data.map((x) => x.toJson())));

class Card {
  String id;
  String name;
  String type;
  String desc;
  String race;
  String archetype;
  List<CardSet> cardSets;
  List<CardImage> cardImages;
  CardPrices cardPrices;

  Card({
    this.id,
    this.name,
    this.type,
    this.desc,
    this.race,
    this.archetype,
    this.cardSets,
    this.cardImages,
    this.cardPrices,
  });

  factory Card.fromJson(Map<String, dynamic> json) => new Card(
    id: json["id"],
    name: json["name"],
    type: json["type"],
    desc: json["desc"],
    race: json["race"],
    archetype: json["archetype"],
    cardSets: new List<CardSet>.from(json["card_sets"].map((x) => CardSet.fromJson(x))),
    cardImages: new List<CardImage>.from(json["card_images"].map((x) => CardImage.fromJson(x))),
    cardPrices: CardPrices.fromJson(json["card_prices"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "type": type,
    "desc": desc,
    "race": race,
    "archetype": archetype,
    "card_sets": new List<dynamic>.from(cardSets.map((x) => x.toJson())),
    "card_images": new List<dynamic>.from(cardImages.map((x) => x.toJson())),
    "card_prices": cardPrices.toJson(),
  };
}

class CardImage {
  String id;
  String imageUrl;
  String imageUrlSmall;

  CardImage({
    this.id,
    this.imageUrl,
    this.imageUrlSmall,
  });

  factory CardImage.fromJson(Map<String, dynamic> json) => new CardImage(
    id: json["id"],
    imageUrl: json["image_url"],
    imageUrlSmall: json["image_url_small"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "image_url": imageUrl,
    "image_url_small": imageUrlSmall,
  };
}

class CardPrices {
  String cardmarketPrice;
  String tcgplayerPrice;
  String ebayPrice;
  String amazonPrice;

  CardPrices({
    this.cardmarketPrice,
    this.tcgplayerPrice,
    this.ebayPrice,
    this.amazonPrice,
  });

  factory CardPrices.fromJson(Map<String, dynamic> json) => new CardPrices(
    cardmarketPrice: json["cardmarket_price"],
    tcgplayerPrice: json["tcgplayer_price"],
    ebayPrice: json["ebay_price"],
    amazonPrice: json["amazon_price"],
  );

  Map<String, dynamic> toJson() => {
    "cardmarket_price": cardmarketPrice,
    "tcgplayer_price": tcgplayerPrice,
    "ebay_price": ebayPrice,
    "amazon_price": amazonPrice,
  };
}

class CardSet {
  String setName;
  String setCode;
  String setRarity;
  String setPrice;

  CardSet({
    this.setName,
    this.setCode,
    this.setRarity,
    this.setPrice,
  });

  factory CardSet.fromJson(Map<String, dynamic> json) => new CardSet(
    setName: json["set_name"],
    setCode: json["set_code"],
    setRarity: json["set_rarity"],
    setPrice: json["set_price"],
  );

  Map<String, dynamic> toJson() => {
    "set_name": setName,
    "set_code": setCode,
    "set_rarity": setRarity,
    "set_price": setPrice,
  };
}
