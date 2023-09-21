class CardDetailModel {
  List<CardDesignVariations>? cardDesignVariations;
  String? cardImageId;
  String? cardShortBgURL;
  String? cardLongBgURL;
  String? cardImageURL;
  String? cardImageURL2;
  String? cardImageURL3;
  String? cardImageURL4;
  String? categoryId;
  String? cardName;
  String? errorTextColor;
  String? cardDesignType;
  CustomImageCardDesignInfo? customImageCardDesignInfo;
  ProfileDesignInfo? profileDesignInfo;
  DpStyling? dpStyling;
  UserNameStyling? userNameStyling;
  TitleStyling? titleStyling;
  TitleStyling? locationStyling;
  CompanyStyling? companyStyling;
  SkillsStyling? skillsStyling;
  SkillsStyling? hobbiesStyling;
  SkillsStyling? subjectsStyling;
  TitleStyling? phoneStyling;
  TitleStyling? emailStyling;
  TitleStyling? addressStyling;
  ActionIcons? actionIcons;
  bool? favouriteStatus;

  CardDetailModel(
      {this.cardDesignVariations,
      this.cardImageId,
      this.cardShortBgURL,
      this.cardLongBgURL,
      this.cardImageURL,
      this.cardImageURL2,
      this.cardImageURL3,
      this.cardImageURL4,
      this.categoryId,
      this.cardName,
      this.errorTextColor,
      this.cardDesignType,
      this.customImageCardDesignInfo,
      this.profileDesignInfo,
      this.dpStyling,
      this.userNameStyling,
      this.titleStyling,
      this.locationStyling,
      this.companyStyling,
      this.skillsStyling,
      this.hobbiesStyling,
      this.subjectsStyling,
      this.phoneStyling,
      this.emailStyling,
      this.addressStyling,
      this.actionIcons,
      this.favouriteStatus});

  CardDetailModel.fromJson(Map<String, dynamic> json) {
    if (json['cardDesignVariations'] != null) {
      cardDesignVariations = <CardDesignVariations>[];
      json['cardDesignVariations'].forEach((v) {
        cardDesignVariations!.add(new CardDesignVariations.fromJson(v));
      });
    }
    cardImageId = json['cardImageId'];
    cardShortBgURL = json['cardShortBgURL'];
    cardLongBgURL = json['cardLongBgURL'];
    cardImageURL = json['cardImageURL'];
    cardImageURL2 = json['cardImageURL2'];
    cardImageURL3 = json['cardImageURL3'];
    cardImageURL4 = json['cardImageURL4'];
    categoryId = json['categoryId'];
    cardName = json['cardName'];
    errorTextColor = json['errorTextColor'];
    cardDesignType = json['cardDesignType'];
    customImageCardDesignInfo = json['customImageCardDesignInfo'] != null
        ? new CustomImageCardDesignInfo.fromJson(
            json['customImageCardDesignInfo'])
        : null;
    profileDesignInfo = json['profileDesignInfo'] != null
        ? new ProfileDesignInfo.fromJson(json['profileDesignInfo'])
        : null;
    dpStyling = json['dpStyling'] != null
        ? new DpStyling.fromJson(json['dpStyling'])
        : null;
    userNameStyling = json['userNameStyling'] != null
        ? new UserNameStyling.fromJson(json['userNameStyling'])
        : null;
    titleStyling = json['titleStyling'] != null
        ? new TitleStyling.fromJson(json['titleStyling'])
        : null;
    locationStyling = json['locationStyling'] != null
        ? new TitleStyling.fromJson(json['locationStyling'])
        : null;
    companyStyling = json['companyStyling'] != null
        ? new CompanyStyling.fromJson(json['companyStyling'])
        : null;
    skillsStyling = json['skillsStyling'] != null
        ? new SkillsStyling.fromJson(json['skillsStyling'])
        : null;
    hobbiesStyling = json['hobbiesStyling'] != null
        ? new SkillsStyling.fromJson(json['hobbiesStyling'])
        : null;
    subjectsStyling = json['subjectsStyling'] != null
        ? new SkillsStyling.fromJson(json['subjectsStyling'])
        : null;
    phoneStyling = json['phoneStyling'] != null
        ? new TitleStyling.fromJson(json['phoneStyling'])
        : null;
    emailStyling = json['emailStyling'] != null
        ? new TitleStyling.fromJson(json['emailStyling'])
        : null;
    addressStyling = json['addressStyling'] != null
        ? new TitleStyling.fromJson(json['addressStyling'])
        : null;
    actionIcons = json['actionIcons'] != null
        ? new ActionIcons.fromJson(json['actionIcons'])
        : null;
    favouriteStatus = json['favouriteStatus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cardDesignVariations != null) {
      data['cardDesignVariations'] =
          this.cardDesignVariations!.map((v) => v.toJson()).toList();
    }
    data['cardImageId'] = this.cardImageId;
    data['cardShortBgURL'] = this.cardShortBgURL;
    data['cardLongBgURL'] = this.cardLongBgURL;
    data['cardImageURL'] = this.cardImageURL;
    data['cardImageURL2'] = this.cardImageURL2;
    data['cardImageURL3'] = this.cardImageURL3;
    data['cardImageURL4'] = this.cardImageURL4;
    data['categoryId'] = this.categoryId;
    data['cardName'] = this.cardName;
    data['errorTextColor'] = this.errorTextColor;
    data['cardDesignType'] = this.cardDesignType;
    if (this.customImageCardDesignInfo != null) {
      data['customImageCardDesignInfo'] =
          this.customImageCardDesignInfo!.toJson();
    }
    if (this.profileDesignInfo != null) {
      data['profileDesignInfo'] = this.profileDesignInfo!.toJson();
    }
    if (this.dpStyling != null) {
      data['dpStyling'] = this.dpStyling!.toJson();
    }
    if (this.userNameStyling != null) {
      data['userNameStyling'] = this.userNameStyling!.toJson();
    }
    if (this.titleStyling != null) {
      data['titleStyling'] = this.titleStyling!.toJson();
    }
    if (this.locationStyling != null) {
      data['locationStyling'] = this.locationStyling!.toJson();
    }
    if (this.companyStyling != null) {
      data['companyStyling'] = this.companyStyling!.toJson();
    }
    if (this.skillsStyling != null) {
      data['skillsStyling'] = this.skillsStyling!.toJson();
    }
    if (this.hobbiesStyling != null) {
      data['hobbiesStyling'] = this.hobbiesStyling!.toJson();
    }
    if (this.subjectsStyling != null) {
      data['subjectsStyling'] = this.subjectsStyling!.toJson();
    }
    if (this.phoneStyling != null) {
      data['phoneStyling'] = this.phoneStyling!.toJson();
    }
    if (this.emailStyling != null) {
      data['emailStyling'] = this.emailStyling!.toJson();
    }
    if (this.addressStyling != null) {
      data['addressStyling'] = this.addressStyling!.toJson();
    }
    if (this.actionIcons != null) {
      data['actionIcons'] = this.actionIcons!.toJson();
    }
    data['favouriteStatus'] = this.favouriteStatus;
    return data;
  }
}

class CardDesignVariations {
  UserNameStyling? userNameStyling;
  TitleStyling? titleStyling;
  TitleStyling? locationStyling;
  ActionIcons? actionIcons;
  ProfileDesignInfo? profileDesignInfo;
  String? cardLongBgURL;
  String? cardDesignType;
  CustomImageCardDesignInfo? customImageCardDesignInfo;
  String? cardImageURL4;
  String? cardImageId;
  String? cardImageURL;

  CardDesignVariations(
      {this.userNameStyling,
      this.titleStyling,
      this.locationStyling,
      this.actionIcons,
      this.profileDesignInfo,
      this.cardLongBgURL,
      this.cardDesignType,
      this.customImageCardDesignInfo,
      this.cardImageURL4,
      this.cardImageId,
      this.cardImageURL});

  CardDesignVariations.fromJson(Map<String, dynamic> json) {
    userNameStyling = json['userNameStyling'] != null
        ? new UserNameStyling.fromJson(json['userNameStyling'])
        : null;
    titleStyling = json['titleStyling'] != null
        ? new TitleStyling.fromJson(json['titleStyling'])
        : null;
    locationStyling = json['locationStyling'] != null
        ? new TitleStyling.fromJson(json['locationStyling'])
        : null;
    actionIcons = json['actionIcons'] != null
        ? new ActionIcons.fromJson(json['actionIcons'])
        : null;
    profileDesignInfo = json['profileDesignInfo'] != null
        ? new ProfileDesignInfo.fromJson(json['profileDesignInfo'])
        : null;
    cardLongBgURL = json['cardLongBgURL'];
    cardDesignType = json['cardDesignType'];
    customImageCardDesignInfo = json['customImageCardDesignInfo'] != null
        ? new CustomImageCardDesignInfo.fromJson(
            json['customImageCardDesignInfo'])
        : null;
    cardImageURL4 = json['cardImageURL4'];
    cardImageId = json['cardImageId'];
    cardImageURL = json['cardImageURL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.userNameStyling != null) {
      data['userNameStyling'] = this.userNameStyling!.toJson();
    }
    if (this.titleStyling != null) {
      data['titleStyling'] = this.titleStyling!.toJson();
    }
    if (this.locationStyling != null) {
      data['locationStyling'] = this.locationStyling!.toJson();
    }
    if (this.actionIcons != null) {
      data['actionIcons'] = this.actionIcons!.toJson();
    }
    if (this.profileDesignInfo != null) {
      data['profileDesignInfo'] = this.profileDesignInfo!.toJson();
    }
    data['cardLongBgURL'] = this.cardLongBgURL;
    data['cardDesignType'] = this.cardDesignType;
    if (this.customImageCardDesignInfo != null) {
      data['customImageCardDesignInfo'] =
          this.customImageCardDesignInfo!.toJson();
    }
    data['cardImageURL4'] = this.cardImageURL4;
    data['cardImageId'] = this.cardImageId;
    data['cardImageURL'] = this.cardImageURL;
    return data;
  }
}

class UserNameStyling {
  String? noOfLines;
  String? fontSize;
  String? alignment;
  String? fontColor;
  String? fontStyle;
  String? fontWeight;

  UserNameStyling(
      {this.noOfLines,
      this.fontSize,
      this.alignment,
      this.fontColor,
      this.fontStyle,
      this.fontWeight});

  UserNameStyling.fromJson(Map<String, dynamic> json) {
    noOfLines = json['noOfLines'];
    fontSize = json['fontSize'];
    alignment = json['alignment'];
    fontColor = json['fontColor'];
    fontStyle = json['fontStyle'];
    fontWeight = json['fontWeight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['noOfLines'] = this.noOfLines;
    data['fontSize'] = this.fontSize;
    data['alignment'] = this.alignment;
    data['fontColor'] = this.fontColor;
    data['fontStyle'] = this.fontStyle;
    data['fontWeight'] = this.fontWeight;
    return data;
  }
}

class TitleStyling {
  String? fontSize;
  String? alignment;
  String? fontColor;
  String? fontStyle;
  String? fontWeight;

  TitleStyling(
      {this.fontSize,
      this.alignment,
      this.fontColor,
      this.fontStyle,
      this.fontWeight});

  TitleStyling.fromJson(Map<String, dynamic> json) {
    fontSize = json['fontSize'];
    alignment = json['alignment'];
    fontColor = json['fontColor'];
    fontStyle = json['fontStyle'];
    fontWeight = json['fontWeight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fontSize'] = this.fontSize;
    data['alignment'] = this.alignment;
    data['fontColor'] = this.fontColor;
    data['fontStyle'] = this.fontStyle;
    data['fontWeight'] = this.fontWeight;
    return data;
  }
}

class ActionIcons {
  String? type;
  String? backgroundColor;
  String? iconColor;
  String? alignment;

  ActionIcons(
      {this.type, this.backgroundColor, this.iconColor, this.alignment});

  ActionIcons.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    backgroundColor = json['backgroundColor'];
    iconColor = json['iconColor'];
    alignment = json['alignment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['backgroundColor'] = this.backgroundColor;
    data['iconColor'] = this.iconColor;
    data['alignment'] = this.alignment;
    return data;
  }
}

class ProfileDesignInfo {
  Opacity? opacity;
  String? designType;
  String? errorTextColor;
  String? primaryColor;
  String? secondaryColor;
  String? textColor;
  String? profileBannerImageURL;
  String? baseColor;
  bool? tint;

  ProfileDesignInfo(
      {this.opacity,
      this.designType,
      this.errorTextColor,
      this.primaryColor,
      this.secondaryColor,
      this.textColor,
      this.profileBannerImageURL,
      this.baseColor,
      this.tint});

  ProfileDesignInfo.fromJson(Map<String, dynamic> json) {
    opacity =
        json['opacity'] != null ? new Opacity.fromJson(json['opacity']) : null;
    designType = json['designType'];
    errorTextColor = json['errorTextColor'];
    primaryColor = json['primaryColor'];
    secondaryColor = json['secondaryColor'];
    textColor = json['textColor'];
    profileBannerImageURL = json['profileBannerImageURL'];
    baseColor = json['baseColor'];
    tint = json['tint'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.opacity != null) {
      data['opacity'] = this.opacity!.toJson();
    }
    data['designType'] = this.designType;
    data['errorTextColor'] = this.errorTextColor;
    data['primaryColor'] = this.primaryColor;
    data['secondaryColor'] = this.secondaryColor;
    data['textColor'] = this.textColor;
    data['profileBannerImageURL'] = this.profileBannerImageURL;
    data['baseColor'] = this.baseColor;
    data['tint'] = this.tint;
    return data;
  }
}

class Opacity {
  String? primary;
  String? secondary;

  Opacity({this.primary, this.secondary});

  Opacity.fromJson(Map<String, dynamic> json) {
    primary = json['primary'];
    secondary = json['secondary'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['primary'] = this.primary;
    data['secondary'] = this.secondary;
    return data;
  }
}

class CustomImageCardDesignInfo {
  String? primaryColor;
  String? profileBannerImageURL;

  CustomImageCardDesignInfo({this.primaryColor, this.profileBannerImageURL});

  CustomImageCardDesignInfo.fromJson(Map<String, dynamic> json) {
    primaryColor = json['primaryColor'];
    profileBannerImageURL = json['profileBannerImageURL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['primaryColor'] = this.primaryColor;
    data['profileBannerImageURL'] = this.profileBannerImageURL;
    return data;
  }
}

class DpStyling {
  String? borderPresent;
  BorderDetails? borderDetails;
  String? alignment;

  DpStyling({this.borderPresent, this.borderDetails, this.alignment});

  DpStyling.fromJson(Map<String, dynamic> json) {
    borderPresent = json['borderPresent'];
    borderDetails = json['borderDetails'] != null
        ? new BorderDetails.fromJson(json['borderDetails'])
        : null;
    alignment = json['alignment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['borderPresent'] = this.borderPresent;
    if (this.borderDetails != null) {
      data['borderDetails'] = this.borderDetails!.toJson();
    }
    data['alignment'] = this.alignment;
    return data;
  }
}

class BorderDetails {
  String? type;
  String? color;
  String? thickness;

  BorderDetails({this.type, this.color, this.thickness});

  BorderDetails.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    color = json['color'];
    thickness = json['thickness'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['color'] = this.color;
    data['thickness'] = this.thickness;
    return data;
  }
}

class CompanyStyling {
  String? fontSize;
  String? alignment;
  String? fontColor;
  String? fontStyle;
  String? fontWeight;
  String? companyDesignationFontSize;
  String? companyDesignationFontColor;
  String? companyDesignationFontStyle;
  String? companyDesignationFontWeight;

  CompanyStyling(
      {this.fontSize,
      this.alignment,
      this.fontColor,
      this.fontStyle,
      this.fontWeight,
      this.companyDesignationFontSize,
      this.companyDesignationFontColor,
      this.companyDesignationFontStyle,
      this.companyDesignationFontWeight});

  CompanyStyling.fromJson(Map<String, dynamic> json) {
    fontSize = json['fontSize'];
    alignment = json['alignment'];
    fontColor = json['fontColor'];
    fontStyle = json['fontStyle'];
    fontWeight = json['fontWeight'];
    companyDesignationFontSize = json['companyDesignationFontSize'];
    companyDesignationFontColor = json['companyDesignationFontColor'];
    companyDesignationFontStyle = json['companyDesignationFontStyle'];
    companyDesignationFontWeight = json['companyDesignationFontWeight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fontSize'] = this.fontSize;
    data['alignment'] = this.alignment;
    data['fontColor'] = this.fontColor;
    data['fontStyle'] = this.fontStyle;
    data['fontWeight'] = this.fontWeight;
    data['companyDesignationFontSize'] = this.companyDesignationFontSize;
    data['companyDesignationFontColor'] = this.companyDesignationFontColor;
    data['companyDesignationFontStyle'] = this.companyDesignationFontStyle;
    data['companyDesignationFontWeight'] = this.companyDesignationFontWeight;
    return data;
  }
}

class SkillsStyling {
  String? boxBackgroundColor;
  String? fontColor;
  String? fontSize;

  SkillsStyling({this.boxBackgroundColor, this.fontColor, this.fontSize});

  SkillsStyling.fromJson(Map<String, dynamic> json) {
    boxBackgroundColor = json['boxBackgroundColor'];
    fontColor = json['fontColor'];
    fontSize = json['fontSize'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['boxBackgroundColor'] = this.boxBackgroundColor;
    data['fontColor'] = this.fontColor;
    data['fontSize'] = this.fontSize;
    return data;
  }
}
