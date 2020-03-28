class NewsModels{
  final int id;
  final String titre;
  final String image;
  final String description;
  final String contenu;

  NewsModels({this.id, this.image, this.description, this.contenu, this.titre});
}

List<NewsModels> newsdetails = [
  NewsModels(
    id:1,
    titre:"16  cas de Covid 19 ►",
    image: "images/mask.jpg",
    description:"16 Nouveaux cas de coronaVirus en Cote d'ivoire 16 Nouveaux cas de coronaVirus en Cote d'ivoire"
  ),
  NewsModels(
    id:2,
    titre:"48  cas de Covid 19 ►",
    image: "images/bilan1.jpg",
    description:"48 Nouveaux cas de coronaVirus en Cote d'ivoire 48 Nouveaux cas de coronaVirus en Cote d'ivoire"
  ),
  NewsModels(
    id:3,
    titre:"1  cas de Covid 19 ►",
    image: "images/bilan3.jpg",
    description:"1 Nouveaux cas de coronaVirus en Cote d'ivoire 1 Nouveaux cas de coronaVirus en Cote d'ivoire"
  ),
  NewsModels(
    id:4,
    titre:"8  cas de Covid 19 ►",
    image: "images/eternuer.jpg",
    description:"8 Nouveaux cas de coronaVirus en Cote d'ivoire 8 Nouveaux cas de coronaVirus en Cote d'ivoire"
  )
];