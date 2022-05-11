import '../util/tool.dart';

class WdbcChrRace {
  WdbcChrRace({
    required this.id,
    required this.flags,
    required this.faction,
    required this.explorationSound,
    required this.maleDisplay,
    required this.femaleDisplay,
    required this.clientPrefix,
    required this.baseLanguage,
    required this.creatureType,
    required this.resSicknessSpell,
    required this.splashSound,
    required this.clientFile,
    required this.cinematicSequence,
    required this.alliance,
    required this.nameLangEnUS,
    required this.nameLangEnGB,
    required this.nameLangDeDE,
    required this.nameLangEnCN,
    required this.nameLangZhCN,
    required this.nameLangEnTW,
    required this.nameLangZhTW,
    required this.nameLangEsES,
    required this.nameLangEsMX,
    required this.nameLangKoKR,
    required this.nameLangFrFR,
    required this.nameLangRuRU,
    required this.nameLangPtPT,
    required this.nameLangPtBR,
    required this.nameLangItIT,
    required this.nameLangUnkown,
    required this.nameLangMask,
    required this.femaleNameLangEnUS,
    required this.femaleNameLangEnGB,
    required this.femaleNameLangDeDE,
    required this.femaleNameLangEnCN,
    required this.femaleNameLangZhCN,
    required this.femaleNameLangEnTW,
    required this.femaleNameLangZhTW,
    required this.femaleNameLangEsES,
    required this.femaleNameLangEsMX,
    required this.femaleNameLangKoKR,
    required this.femaleNameLangFrFR,
    required this.femaleNameLangRuRU,
    required this.femaleNameLangPtPT,
    required this.femaleNameLangPtBR,
    required this.femaleNameLangItIT,
    required this.femaleNameLangUnkown,
    required this.femaleNameLangMask,
    required this.maleNameLangEnUS,
    required this.maleNameLangEnGB,
    required this.maleNameLangDeDE,
    required this.maleNameLangEnCN,
    required this.maleNameLangZhCN,
    required this.maleNameLangEnTW,
    required this.maleNameLangZhTW,
    required this.maleNameLangEsES,
    required this.maleNameLangEsMX,
    required this.maleNameLangKoKR,
    required this.maleNameLangFrFR,
    required this.maleNameLangRuRU,
    required this.maleNameLangPtPT,
    required this.maleNameLangPtBR,
    required this.maleNameLangItIT,
    required this.maleNameLangUnkown,
    required this.maleNameLangMask,
    required this.facialHairCustomization1,
    required this.facialHairCustomization2,
    required this.hairCustomization,
    required this.requiredExpansion,
  });

  WdbcChrRace.fromJson(Map<String, dynamic> map) {
    id = map['id'];
    flags = map['flags'];
    faction = map['faction'];
    explorationSound = map['explorationSound'];
    maleDisplay = map['maleDisplay'];
    femaleDisplay = map['femaleDisplay'];
    clientPrefix = map['clientPrefix'];
    baseLanguage = map['baseLanguage'];
    creatureType = map['creatureType'];
    resSicknessSpell = map['resSicknessSpell'];
    splashSound = map['splashSound'];
    clientFile = map['clientFile'];
    cinematicSequence = map['cinematicSequence'];
    alliance = map['alliance'];
    nameLangEnUS = map['nameLangEnUS'];
    nameLangEnGB = map['nameLangEnGB'];
    nameLangDeDE = map['nameLangDeDE'];
    nameLangEnCN = map['nameLangEnCN'];
    nameLangZhCN = map['nameLangZhCN'];
    nameLangEnTW = map['nameLangEnTW'];
    nameLangZhTW = map['nameLangZhTW'];
    nameLangEsES = map['nameLangEsES'];
    nameLangEsMX = map['nameLangEsMX'];
    nameLangKoKR = map['nameLangKoKR'];
    nameLangFrFR = map['nameLangFrFR'];
    nameLangRuRU = map['nameLangRuRU'];
    nameLangPtPT = map['nameLangPtPT'];
    nameLangPtBR = map['nameLangPtBR'];
    nameLangItIT = map['nameLangItIT'];
    nameLangUnkown = map['nameLangUnkown'];
    nameLangMask = map['nameLangMask'];
    femaleNameLangEnUS = map['femaleNameLangEnUS'];
    femaleNameLangEnGB = map['femaleNameLangEnGB'];
    femaleNameLangDeDE = map['femaleNameLangDeDE'];
    femaleNameLangEnCN = map['femaleNameLangEnCN'];
    femaleNameLangZhCN = map['femaleNameLangZhCN'];
    femaleNameLangEnTW = map['femaleNameLangEnTW'];
    femaleNameLangZhTW = map['femaleNameLangZhTW'];
    femaleNameLangEsES = map['femaleNameLangEsES'];
    femaleNameLangEsMX = map['femaleNameLangEsMX'];
    femaleNameLangKoKR = map['femaleNameLangKoKR'];
    femaleNameLangFrFR = map['femaleNameLangFrFR'];
    femaleNameLangRuRU = map['femaleNameLangRuRU'];
    femaleNameLangPtPT = map['femaleNameLangPtPT'];
    femaleNameLangPtBR = map['femaleNameLangPtBR'];
    femaleNameLangItIT = map['femaleNameLangItIT'];
    femaleNameLangUnkown = map['femaleNameLangUnkown'];
    femaleNameLangMask = map['femaleNameLangMask'];
    maleNameLangEnUS = map['maleNameLangEnUS'];
    maleNameLangEnGB = map['maleNameLangEnGB'];
    maleNameLangDeDE = map['maleNameLangDeDE'];
    maleNameLangEnCN = map['maleNameLangEnCN'];
    maleNameLangZhCN = map['maleNameLangZhCN'];
    maleNameLangEnTW = map['maleNameLangEnTW'];
    maleNameLangZhTW = map['maleNameLangZhTW'];
    maleNameLangEsES = map['maleNameLangEsES'];
    maleNameLangEsMX = map['maleNameLangEsMX'];
    maleNameLangKoKR = map['maleNameLangKoKR'];
    maleNameLangFrFR = map['maleNameLangFrFR'];
    maleNameLangRuRU = map['maleNameLangRuRU'];
    maleNameLangPtPT = map['maleNameLangPtPT'];
    maleNameLangPtBR = map['maleNameLangPtBR'];
    maleNameLangItIT = map['maleNameLangItIT'];
    maleNameLangUnkown = map['maleNameLangUnkown'];
    maleNameLangMask = map['maleNameLangMask'];
    facialHairCustomization1 = map['facialHairCustomization1'];
    facialHairCustomization2 = map['facialHairCustomization2'];
    hairCustomization = map['hairCustomization'];
    requiredExpansion = map['requiredExpansion'];
  }

  late int id;
  late int flags;
  late int faction;
  late int explorationSound;
  late int maleDisplay;
  late int femaleDisplay;
  late String clientPrefix;
  late int baseLanguage;
  late int creatureType;
  late int resSicknessSpell;
  late int splashSound;
  late String clientFile;
  late int cinematicSequence;
  late int alliance;
  late String nameLangEnUS;
  late String nameLangEnGB;
  late String nameLangDeDE;
  late String nameLangEnCN;
  late String nameLangZhCN;
  late String nameLangEnTW;
  late String nameLangZhTW;
  late String nameLangEsES;
  late String nameLangEsMX;
  late String nameLangKoKR;
  late String nameLangFrFR;
  late String nameLangRuRU;
  late String nameLangPtPT;
  late String nameLangPtBR;
  late String nameLangItIT;
  late String nameLangUnkown;
  late int nameLangMask;
  late String femaleNameLangEnUS;
  late String femaleNameLangEnGB;
  late String femaleNameLangDeDE;
  late String femaleNameLangEnCN;
  late String femaleNameLangZhCN;
  late String femaleNameLangEnTW;
  late String femaleNameLangZhTW;
  late String femaleNameLangEsES;
  late String femaleNameLangEsMX;
  late String femaleNameLangKoKR;
  late String femaleNameLangFrFR;
  late String femaleNameLangRuRU;
  late String femaleNameLangPtPT;
  late String femaleNameLangPtBR;
  late String femaleNameLangItIT;
  late String femaleNameLangUnkown;
  late int femaleNameLangMask;
  late String maleNameLangEnUS;
  late String maleNameLangEnGB;
  late String maleNameLangDeDE;
  late String maleNameLangEnCN;
  late String maleNameLangZhCN;
  late String maleNameLangEnTW;
  late String maleNameLangZhTW;
  late String maleNameLangEsES;
  late String maleNameLangEsMX;
  late String maleNameLangKoKR;
  late String maleNameLangFrFR;
  late String maleNameLangRuRU;
  late String maleNameLangPtPT;
  late String maleNameLangPtBR;
  late String maleNameLangItIT;
  late String maleNameLangUnkown;
  late int maleNameLangMask;
  late String facialHairCustomization1;
  late String facialHairCustomization2;
  late String hairCustomization;
  late String requiredExpansion;

  static List<String> keys() {
    return [
      'id',
      'flags',
      'faction',
      'explorationSound',
      'maleDisplay',
      'femaleDisplay',
      'clientPrefix',
      'baseLanguage',
      'creatureType',
      'resSicknessSpell',
      'splashSound',
      'clientFile',
      'cinematicSequence',
      'alliance',
      'nameLangEnUS',
      'nameLangEnGB',
      'nameLangDeDE',
      'nameLangEnCN',
      'nameLangZhCN',
      'nameLangEnTW',
      'nameLangZhTW',
      'nameLangEsES',
      'nameLangEsMX',
      'nameLangKoKR',
      'nameLangFrFR',
      'nameLangRuRU',
      'nameLangPtPT',
      'nameLangPtBR',
      'nameLangItIT',
      'nameLangUnkown',
      'nameLangMask',
      'femaleNameLangEnUS',
      'femaleNameLangEnGB',
      'femaleNameLangDeDE',
      'femaleNameLangEnCN',
      'femaleNameLangZhCN',
      'femaleNameLangEnTW',
      'femaleNameLangZhTW',
      'femaleNameLangEsES',
      'femaleNameLangEsMX',
      'femaleNameLangKoKR',
      'femaleNameLangFrFR',
      'femaleNameLangRuRU',
      'femaleNameLangPtPT',
      'femaleNameLangPtBR',
      'femaleNameLangItIT',
      'femaleNameLangUnkown',
      'femaleNameLangMask',
      'maleNameLangEnUS',
      'maleNameLangEnGB',
      'maleNameLangDeDE',
      'maleNameLangEnCN',
      'maleNameLangZhCN',
      'maleNameLangEnTW',
      'maleNameLangZhTW',
      'maleNameLangEsES',
      'maleNameLangEsMX',
      'maleNameLangKoKR',
      'maleNameLangFrFR',
      'maleNameLangRuRU',
      'maleNameLangPtPT',
      'maleNameLangPtBR',
      'maleNameLangItIT',
      'maleNameLangUnkown',
      'maleNameLangMask',
      'facialHairCustomization1',
      'facialHairCustomization2',
      'hairCustomization',
      'requiredExpansion',
    ];
  }

  static List<WarcraftyType> types() {
    return [
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.string,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.string,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.int32,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.int32,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.int32,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
    ];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'flags': flags,
      'faction': faction,
      'explorationSound': explorationSound,
      'maleDisplay': maleDisplay,
      'femaleDisplay': femaleDisplay,
      'clientPrefix': clientPrefix,
      'baseLanguage': baseLanguage,
      'creatureType': creatureType,
      'resSicknessSpell': resSicknessSpell,
      'splashSound': splashSound,
      'clientFile': clientFile,
      'cinematicSequence': cinematicSequence,
      'alliance': alliance,
      'nameLangEnUS': nameLangEnUS,
      'nameLangEnGB': nameLangEnGB,
      'nameLangDeDE': nameLangDeDE,
      'nameLangEnCN': nameLangEnCN,
      'nameLangZhCN': nameLangZhCN,
      'nameLangEnTW': nameLangEnTW,
      'nameLangZhTW': nameLangZhTW,
      'nameLangEsES': nameLangEsES,
      'nameLangEsMX': nameLangEsMX,
      'nameLangKoKR': nameLangKoKR,
      'nameLangFrFR': nameLangFrFR,
      'nameLangRuRU': nameLangRuRU,
      'nameLangPtPT': nameLangPtPT,
      'nameLangPtBR': nameLangPtBR,
      'nameLangItIT': nameLangItIT,
      'nameLangUnkown': nameLangUnkown,
      'nameLangMask': nameLangMask,
      'femaleNameLangEnUS': femaleNameLangEnUS,
      'femaleNameLangEnGB': femaleNameLangEnGB,
      'femaleNameLangDeDE': femaleNameLangDeDE,
      'femaleNameLangEnCN': femaleNameLangEnCN,
      'femaleNameLangZhCN': femaleNameLangZhCN,
      'femaleNameLangEnTW': femaleNameLangEnTW,
      'femaleNameLangZhTW': femaleNameLangZhTW,
      'femaleNameLangEsES': femaleNameLangEsES,
      'femaleNameLangEsMX': femaleNameLangEsMX,
      'femaleNameLangKoKR': femaleNameLangKoKR,
      'femaleNameLangFrFR': femaleNameLangFrFR,
      'femaleNameLangRuRU': femaleNameLangRuRU,
      'femaleNameLangPtPT': femaleNameLangPtPT,
      'femaleNameLangPtBR': femaleNameLangPtBR,
      'femaleNameLangItIT': femaleNameLangItIT,
      'femaleNameLangUnkown': femaleNameLangUnkown,
      'femaleNameLangMask': femaleNameLangMask,
      'maleNameLangEnUS': maleNameLangEnUS,
      'maleNameLangEnGB': maleNameLangEnGB,
      'maleNameLangDeDE': maleNameLangDeDE,
      'maleNameLangEnCN': maleNameLangEnCN,
      'maleNameLangZhCN': maleNameLangZhCN,
      'maleNameLangEnTW': maleNameLangEnTW,
      'maleNameLangZhTW': maleNameLangZhTW,
      'maleNameLangEsES': maleNameLangEsES,
      'maleNameLangEsMX': maleNameLangEsMX,
      'maleNameLangKoKR': maleNameLangKoKR,
      'maleNameLangFrFR': maleNameLangFrFR,
      'maleNameLangRuRU': maleNameLangRuRU,
      'maleNameLangPtPT': maleNameLangPtPT,
      'maleNameLangPtBR': maleNameLangPtBR,
      'maleNameLangItIT': maleNameLangItIT,
      'maleNameLangUnkown': maleNameLangUnkown,
      'maleNameLangMask': maleNameLangMask,
      'facialHairCustomization1': facialHairCustomization1,
      'facialHairCustomization2': facialHairCustomization2,
      'hairCustomization': hairCustomization,
      'requiredExpansion': requiredExpansion,
    };
  }
}

class Wdc3ChrRace {
  Wdc3ChrRace({
    required this.id,
    required this.clientPrefix,
    required this.clientFileString,
    required this.nameLang,
    required this.nameFemaleLang,
    required this.nameLowercaseLang,
    required this.nameFemaleLowercaseLang,
    required this.loreNameLang,
    required this.loreNameFemaleLang,
    required this.loreNameLowercaseLang,
    required this.loreNameFemaleLowercaseLang,
    required this.shortNameLang,
    required this.shortNameFemaleLang,
    required this.shortNameLowercaseLang,
    required this.shortNameFemaleLowercaseLang,
    required this.flags,
    required this.factionId,
    required this.cinematicSequenceId,
    required this.resSicknessSpellId,
    required this.splashSoundId,
    required this.alliance,
    required this.raceRelated,
    required this.unalteredVisualRaceId,
    required this.defaultClassId,
    required this.createScreenFileDataID,
    required this.selectScreenFileDataID,
    required this.neutralRaceID,
    required this.lowResScreenFileDataID,
    required this.alteredFormStartVisualKitId1,
    required this.alteredFormStartVisualKitId2,
    required this.alteredFormStartVisualKitId3,
    required this.alteredFormFinishVisualKitId1,
    required this.alteredFormFinishVisualKitId2,
    required this.alteredFormFinishVisualKitId3,
    required this.heritageArmorAchievementID,
    required this.startingLevel,
    required this.uiDisplayOrder,
    required this.maleModelFallbackRaceID,
    required this.femaleModelFallbackRaceID,
    required this.maleTextureFallbackRaceID,
    required this.femaleTextureFallbackRaceID,
    required this.playableRaceBit,
    required this.helmetAnimScalingRaceID,
    required this.transmogrifyDisabledSlotMask,
    required this.unalteredVisualCustomizationRaceID,
    required this.alteredFormCustomizeOffsetFallback1,
    required this.alteredFormCustomizeOffsetFallback2,
    required this.alteredFormCustomizeOffsetFallback3,
    required this.alteredFormCustomizeRotationFallback,
    required this.unkown1,
    required this.unkown2,
    required this.unkown3,
    required this.unkown4,
    required this.unkown5,
    required this.unkown6,
    required this.baseLanguage,
    required this.creatureType,
    required this.maleModelFallbackSex,
    required this.femaleModelFallbackSex,
    required this.maleTextureFallbackSex,
    required this.femaleTextureFallbackSex,
  });

  Wdc3ChrRace.fromJson(Map<String, dynamic> map) {
    id = map['id'];
    clientPrefix = map['clientPrefix'];
    clientFileString = map['clientFileString'];
    nameLang = map['nameLang'];
    nameFemaleLang = map['nameFemaleLang'];
    nameLowercaseLang = map['nameLowercaseLang'];
    nameFemaleLowercaseLang = map['nameFemaleLowercaseLang'];
    loreNameLang = map['loreNameLang'];
    loreNameFemaleLang = map['loreNameFemaleLang'];
    loreNameLowercaseLang = map['loreNameLowercaseLang'];
    loreNameFemaleLowercaseLang = map['loreNameFemaleLowercaseLang'];
    shortNameLang = map['shortNameLang'];
    shortNameFemaleLang = map['shortNameFemaleLang'];
    shortNameLowercaseLang = map['shortNameLowercaseLang'];
    shortNameFemaleLowercaseLang = map['shortNameFemaleLowercaseLang'];
    flags = map['flags'];
    factionId = map['factionId'];
    cinematicSequenceId = map['cinematicSequenceId'];
    resSicknessSpellId = map['resSicknessSpellId'];
    splashSoundId = map['splashSoundId'];
    alliance = map['alliance'];
    raceRelated = map['raceRelated'];
    unalteredVisualRaceId = map['unalteredVisualRaceId'];
    defaultClassId = map['defaultClassId'];
    createScreenFileDataID = map['createScreenFileDataID'];
    selectScreenFileDataID = map['selectScreenFileDataID'];
    neutralRaceID = map['neutralRaceID'];
    lowResScreenFileDataID = map['lowResScreenFileDataID'];
    alteredFormStartVisualKitId1 = map['alteredFormStartVisualKitId1'];
    alteredFormStartVisualKitId2 = map['alteredFormStartVisualKitId2'];
    alteredFormStartVisualKitId3 = map['alteredFormStartVisualKitId3'];
    alteredFormFinishVisualKitId1 = map['alteredFormFinishVisualKitId1'];
    alteredFormFinishVisualKitId2 = map['alteredFormFinishVisualKitId2'];
    alteredFormFinishVisualKitId3 = map['alteredFormFinishVisualKitId3'];
    heritageArmorAchievementID = map['heritageArmorAchievementID'];
    startingLevel = map['startingLevel'];
    uiDisplayOrder = map['uiDisplayOrder'];
    maleModelFallbackRaceID = map['maleModelFallbackRaceID'];
    femaleModelFallbackRaceID = map['femaleModelFallbackRaceID'];
    maleTextureFallbackRaceID = map['maleTextureFallbackRaceID'];
    femaleTextureFallbackRaceID = map['femaleTextureFallbackRaceID'];
    playableRaceBit = map['playableRaceBit'];
    helmetAnimScalingRaceID = map['helmetAnimScalingRaceID'];
    transmogrifyDisabledSlotMask = map['transmogrifyDisabledSlotMask'];
    unalteredVisualCustomizationRaceID =
        map['unalteredVisualCustomizationRaceID'];
    alteredFormCustomizeOffsetFallback1 =
        map['alteredFormCustomizeOffsetFallback1'];
    alteredFormCustomizeOffsetFallback2 =
        map['alteredFormCustomizeOffsetFallback2'];
    alteredFormCustomizeOffsetFallback3 =
        map['alteredFormCustomizeOffsetFallback3'];
    alteredFormCustomizeRotationFallback =
        map['alteredFormCustomizeRotationFallback'];
    unkown1 = map['unkown1'];
    unkown2 = map['unkown2'];
    unkown3 = map['unkown3'];
    unkown4 = map['unkown4'];
    unkown5 = map['unkown5'];
    unkown6 = map['unkown6'];
    baseLanguage = map['baseLanguage'];
    creatureType = map['creatureType'];
    maleModelFallbackSex = map['maleModelFallbackSex'];
    femaleModelFallbackSex = map['femaleModelFallbackSex'];
    maleTextureFallbackSex = map['maleTextureFallbackSex'];
    femaleTextureFallbackSex = map['femaleTextureFallbackSex'];
  }

  late int id;
  late String clientPrefix;
  late String clientFileString;
  late String nameLang;
  late String nameFemaleLang;
  late String nameLowercaseLang;
  late String nameFemaleLowercaseLang;
  late String loreNameLang;
  late String loreNameFemaleLang;
  late String loreNameLowercaseLang;
  late String loreNameFemaleLowercaseLang;
  late String shortNameLang;
  late String shortNameFemaleLang;
  late String shortNameLowercaseLang;
  late String shortNameFemaleLowercaseLang;
  late int flags;
  late int factionId;
  late int cinematicSequenceId;
  late int resSicknessSpellId;
  late int splashSoundId;
  late int alliance;
  late int raceRelated;
  late int unalteredVisualRaceId;
  late int defaultClassId;
  late int createScreenFileDataID;
  late int selectScreenFileDataID;
  late int neutralRaceID;
  late int lowResScreenFileDataID;
  late int alteredFormStartVisualKitId1;
  late int alteredFormStartVisualKitId2;
  late int alteredFormStartVisualKitId3;
  late int alteredFormFinishVisualKitId1;
  late int alteredFormFinishVisualKitId2;
  late int alteredFormFinishVisualKitId3;
  late int heritageArmorAchievementID;
  late int startingLevel;
  late int uiDisplayOrder;
  late int maleModelFallbackRaceID;
  late int femaleModelFallbackRaceID;
  late int maleTextureFallbackRaceID;
  late int femaleTextureFallbackRaceID;
  late int playableRaceBit;
  late int helmetAnimScalingRaceID;
  late int transmogrifyDisabledSlotMask;
  late int unalteredVisualCustomizationRaceID;
  late int alteredFormCustomizeOffsetFallback1;
  late int alteredFormCustomizeOffsetFallback2;
  late int alteredFormCustomizeOffsetFallback3;
  late int alteredFormCustomizeRotationFallback;
  late String unkown1;
  late String unkown2;
  late String unkown3;
  late String unkown4;
  late String unkown5;
  late String unkown6;
  late int baseLanguage;
  late int creatureType;
  late int maleModelFallbackSex;
  late int femaleModelFallbackSex;
  late int maleTextureFallbackSex;
  late int femaleTextureFallbackSex;

  static List<String> keys() {
    return [
      'id',
      'clientPrefix',
      'clientFileString',
      'nameLang',
      'nameFemaleLang',
      'nameLowercaseLang',
      'nameFemaleLowercaseLang',
      'loreNameLang',
      'loreNameFemaleLang',
      'loreNameLowercaseLang',
      'loreNameFemaleLowercaseLang',
      'shortNameLang',
      'shortNameFemaleLang',
      'shortNameLowercaseLang',
      'shortNameFemaleLowercaseLang',
      'flags',
      'factionId',
      'cinematicSequenceId',
      'resSicknessSpellId',
      'splashSoundId',
      'alliance',
      'raceRelated',
      'unalteredVisualRaceId',
      'defaultClassId',
      'createScreenFileDataID',
      'selectScreenFileDataID',
      'neutralRaceID',
      'lowResScreenFileDataID',
      'alteredFormStartVisualKitId1',
      'alteredFormStartVisualKitId2',
      'alteredFormStartVisualKitId3',
      'alteredFormFinishVisualKitId1',
      'alteredFormFinishVisualKitId2',
      'alteredFormFinishVisualKitId3',
      'heritageArmorAchievementID',
      'startingLevel',
      'uiDisplayOrder',
      'maleModelFallbackRaceID',
      'femaleModelFallbackRaceID',
      'maleTextureFallbackRaceID',
      'femaleTextureFallbackRaceID',
      'playableRaceBit',
      'helmetAnimScalingRaceID',
      'transmogrifyDisabledSlotMask',
      'unalteredVisualCustomizationRaceID',
      'alteredFormCustomizeOffsetFallback1',
      'alteredFormCustomizeOffsetFallback2',
      'alteredFormCustomizeOffsetFallback3',
      'alteredFormCustomizeRotationFallback',
      'unkown1',
      'unkown2',
      'unkown3',
      'unkown4',
      'unkown5',
      'unkown6',
      'baseLanguage',
      'creatureType',
      'maleModelFallbackSex',
      'femaleModelFallbackSex',
      'maleTextureFallbackSex',
      'femaleTextureFallbackSex',
    ];
  }

  static List<WarcraftyType> types() {
    return [
      WarcraftyType.int32,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.int32,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.string,
      WarcraftyType.int8,
      WarcraftyType.int8,
      WarcraftyType.int8,
      WarcraftyType.int8,
      WarcraftyType.int8,
      WarcraftyType.int8,
    ];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'clientPrefix': clientPrefix,
      'clientFileString': clientFileString,
      'nameLang': nameLang,
      'nameFemaleLang': nameFemaleLang,
      'nameLowercaseLang': nameLowercaseLang,
      'nameFemaleLowercaseLang': nameFemaleLowercaseLang,
      'loreNameLang': loreNameLang,
      'loreNameFemaleLang': loreNameFemaleLang,
      'loreNameLowercaseLang': loreNameLowercaseLang,
      'loreNameFemaleLowercaseLang': loreNameFemaleLowercaseLang,
      'shortNameLang': shortNameLang,
      'shortNameFemaleLang': shortNameFemaleLang,
      'shortNameLowercaseLang': shortNameLowercaseLang,
      'shortNameFemaleLowercaseLang': shortNameFemaleLowercaseLang,
      'flags': flags,
      'factionId': factionId,
      'cinematicSequenceId': cinematicSequenceId,
      'resSicknessSpellId': resSicknessSpellId,
      'splashSoundId': splashSoundId,
      'alliance': alliance,
      'raceRelated': raceRelated,
      'unalteredVisualRaceId': unalteredVisualRaceId,
      'defaultClassId': defaultClassId,
      'createScreenFileDataID': createScreenFileDataID,
      'selectScreenFileDataID': selectScreenFileDataID,
      'neutralRaceID': neutralRaceID,
      'lowResScreenFileDataID': lowResScreenFileDataID,
      'alteredFormStartVisualKitId1': alteredFormStartVisualKitId1,
      'alteredFormStartVisualKitId2': alteredFormStartVisualKitId2,
      'alteredFormStartVisualKitId3': alteredFormStartVisualKitId3,
      'alteredFormFinishVisualKitId1': alteredFormFinishVisualKitId1,
      'alteredFormFinishVisualKitId2': alteredFormFinishVisualKitId2,
      'alteredFormFinishVisualKitId3': alteredFormFinishVisualKitId3,
      'heritageArmorAchievementID': heritageArmorAchievementID,
      'startingLevel': startingLevel,
      'uiDisplayOrder': uiDisplayOrder,
      'maleModelFallbackRaceID': maleModelFallbackRaceID,
      'femaleModelFallbackRaceID': femaleModelFallbackRaceID,
      'maleTextureFallbackRaceID': maleTextureFallbackRaceID,
      'femaleTextureFallbackRaceID': femaleTextureFallbackRaceID,
      'playableRaceBit': playableRaceBit,
      'helmetAnimScalingRaceID': helmetAnimScalingRaceID,
      'transmogrifyDisabledSlotMask': transmogrifyDisabledSlotMask,
      'unalteredVisualCustomizationRaceID': unalteredVisualCustomizationRaceID,
      'alteredFormCustomizeOffsetFallback1':
          alteredFormCustomizeOffsetFallback1,
      'alteredFormCustomizeOffsetFallback2':
          alteredFormCustomizeOffsetFallback2,
      'alteredFormCustomizeOffsetFallback3':
          alteredFormCustomizeOffsetFallback3,
      'alteredFormCustomizeRotationFallback':
          alteredFormCustomizeRotationFallback,
      'unkown1': unkown1,
      'unkown2': unkown2,
      'unkown3': unkown3,
      'unkown4': unkown4,
      'unkown5': unkown5,
      'unkown6': unkown6,
      'baseLanguage': baseLanguage,
      'creatureType': creatureType,
      'maleModelFallbackSex': maleModelFallbackSex,
      'femaleModelFallbackSex': femaleModelFallbackSex,
      'maleTextureFallbackSex': maleTextureFallbackSex,
      'femaleTextureFallbackSex': femaleTextureFallbackSex,
    };
  }
}
