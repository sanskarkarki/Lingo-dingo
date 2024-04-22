class SectionModel {
  final String sectionDescription;
  final String sectionName;
  final String sectionImage;

  SectionModel({
    required this.sectionDescription,
    required this.sectionName,
    required this.sectionImage,
  });

  static List<SectionModel> getSections() {
    List<SectionModel> sections = [];

    sections.add(
      SectionModel(
        sectionName: "Section One",
        sectionDescription: "Order food, describe people",
        sectionImage: "assets/images/section-1.jpg",
      ),
    );
    sections.add(
      SectionModel(
        sectionName: "Section Two",
        sectionDescription: "Introduce yourself, order food and drink",
        sectionImage: "assets/images/section-2.jpg",
      ),
    );
    sections.add(
      SectionModel(
        sectionName: "Section Three",
        sectionDescription: "Talk about countries, ask for directions",
        sectionImage: "assets/images/section-3.jpg",
      ),
    );
    sections.add(
      SectionModel(
        sectionName: "Section Four",
        sectionDescription: "Describe belongings, talk about neighbours",
        sectionImage: "assets/images/section-4.jpg",
      ),
    );
    sections.add(
      SectionModel(
        sectionName: "Section Five",
        sectionDescription: "Tell time, get help when traveling",
        sectionImage: "assets/images/section-5.jpg",
      ),
    );
    sections.add(
      SectionModel(
        sectionName: "Section Six",
        sectionDescription: "Prove your proficiency",
        sectionImage: "assets/images/practice.jpg",
      ),
    );
    return sections;
  }
}
