//
//  HomeScreen.swift
//  CoffeeBeanShop
//
//  Created by Данил Дьяченко on 04.07.2025.
//

import SwiftUI

struct HomeScreen: View {
    
    init() {
        for family in UIFont.familyNames {
            print("Family: \(family)")
            for name in UIFont.fontNames(forFamilyName: family) {
                print(" - \(name)")
            }
        }
    }
    
    var body: some View {
        VStack {
            HeadlineView()
                .padding(.bottom, 24.0)
            
            InputView()
                .padding(.bottom, 32.0)
            
            CategoryView()
        }
    }
}

#Preview {
    HomeScreen()
}

//load_eligibility_plist: Failed to open /Users/danildacenko/Library/Developer/CoreSimulator/Devices/C6F21206-BD45-49C7-AA73-454FFE4D222B/data/Containers/Data/Application/44D9E032-029D-4057-A443-140BCE25DE05/private/var/db/eligibilityd/eligibility.plist: No such file or directory(2)
//Family: Academy Engraved LET
// - AcademyEngravedLetPlain
//Family: Al Nile
// - AlNile
// - AlNile-Bold
//Family: American Typewriter
// - AmericanTypewriter
// - AmericanTypewriter-Light
// - AmericanTypewriter-Semibold
// - AmericanTypewriter-Bold
// - AmericanTypewriter-Condensed
// - AmericanTypewriter-CondensedLight
// - AmericanTypewriter-CondensedBold
//Family: Apple Color Emoji
// - AppleColorEmoji
//Family: Apple SD Gothic Neo
// - AppleSDGothicNeo-Regular
// - AppleSDGothicNeo-Thin
// - AppleSDGothicNeo-UltraLight
// - AppleSDGothicNeo-Light
// - AppleSDGothicNeo-Medium
// - AppleSDGothicNeo-SemiBold
// - AppleSDGothicNeo-Bold
//Family: Apple Symbols
// - AppleSymbols
//Family: Arial
// - ArialMT
// - Arial-ItalicMT
// - Arial-BoldMT
// - Arial-BoldItalicMT
//Family: Arial Hebrew
// - ArialHebrew
// - ArialHebrew-Light
// - ArialHebrew-Bold
//Family: Arial Rounded MT Bold
// - ArialRoundedMTBold
//Family: Avenir
// - Avenir-Book
// - Avenir-Roman
// - Avenir-BookOblique
// - Avenir-Oblique
// - Avenir-Light
// - Avenir-LightOblique
// - Avenir-Medium
// - Avenir-MediumOblique
// - Avenir-Heavy
// - Avenir-HeavyOblique
// - Avenir-Black
// - Avenir-BlackOblique
//Family: Avenir Next
// - AvenirNext-Regular
// - AvenirNext-Italic
// - AvenirNext-UltraLight
// - AvenirNext-UltraLightItalic
// - AvenirNext-Medium
// - AvenirNext-MediumItalic
// - AvenirNext-DemiBold
// - AvenirNext-DemiBoldItalic
// - AvenirNext-Bold
// - AvenirNext-BoldItalic
// - AvenirNext-Heavy
// - AvenirNext-HeavyItalic
//Family: Avenir Next Condensed
// - AvenirNextCondensed-Regular
// - AvenirNextCondensed-Italic
// - AvenirNextCondensed-UltraLight
// - AvenirNextCondensed-UltraLightItalic
// - AvenirNextCondensed-Medium
// - AvenirNextCondensed-MediumItalic
// - AvenirNextCondensed-DemiBold
// - AvenirNextCondensed-DemiBoldItalic
// - AvenirNextCondensed-Bold
// - AvenirNextCondensed-BoldItalic
// - AvenirNextCondensed-Heavy
// - AvenirNextCondensed-HeavyItalic
//Family: Baskerville
// - Baskerville
// - Baskerville-Italic
// - Baskerville-SemiBold
// - Baskerville-SemiBoldItalic
// - Baskerville-Bold
// - Baskerville-BoldItalic
//Family: Bodoni 72
// - BodoniSvtyTwoITCTT-Book
// - BodoniSvtyTwoITCTT-BookIta
// - BodoniSvtyTwoITCTT-Bold
//Family: Bodoni 72 Oldstyle
// - BodoniSvtyTwoOSITCTT-Book
// - BodoniSvtyTwoOSITCTT-BookIt
// - BodoniSvtyTwoOSITCTT-Bold
//Family: Bodoni 72 Smallcaps
// - BodoniSvtyTwoSCITCTT-Book
//Family: Bodoni Ornaments
// - BodoniOrnamentsITCTT
//Family: Bradley Hand
// - BradleyHandITCTT-Bold
//Family: Chalkboard SE
// - ChalkboardSE-Regular
// - ChalkboardSE-Light
// - ChalkboardSE-Bold
//Family: Chalkduster
// - Chalkduster
//Family: Charter
// - Charter-Roman
// - Charter-Italic
// - Charter-Bold
// - Charter-BoldItalic
// - Charter-Black
// - Charter-BlackItalic
//Family: Cochin
// - Cochin
// - Cochin-Italic
// - Cochin-Bold
// - Cochin-BoldItalic
//Family: Copperplate
// - Copperplate
// - Copperplate-Light
// - Copperplate-Bold
//Family: Courier New
// - CourierNewPSMT
// - CourierNewPS-ItalicMT
// - CourierNewPS-BoldMT
// - CourierNewPS-BoldItalicMT
//Family: Damascus
// - Damascus
// - DamascusLight
// - DamascusMedium
// - DamascusSemiBold
// - DamascusBold
//Family: DecoType Nastaleeq Urdu
// - DecoTypeNastaleeqUrdu-Regular
// - DecoTypeNastaleeqUrdu-Bold
//Family: Devanagari Sangam MN
// - DevanagariSangamMN
// - DevanagariSangamMN-Bold
//Family: Didot
// - Didot
// - Didot-Italic
// - Didot-Bold
//Family: DIN Alternate
// - DINAlternate-Bold
//Family: DIN Condensed
// - DINCondensed-Bold
//Family: Euphemia UCAS
// - EuphemiaUCAS
// - EuphemiaUCAS-Italic
// - EuphemiaUCAS-Bold
//Family: Farah
// - Farah
//Family: Futura
// - Futura-Medium
// - Futura-MediumItalic
// - Futura-Bold
// - Futura-CondensedMedium
// - Futura-CondensedExtraBold
//Family: Galvji
// - Galvji
// - Galvji-Bold
//Family: Geeza Pro
// - GeezaPro
// - GeezaPro-Bold
//Family: Georgia
// - Georgia
// - Georgia-Italic
// - Georgia-Bold
// - Georgia-BoldItalic
//Family: Gill Sans
// - GillSans
// - GillSans-Italic
// - GillSans-Light
// - GillSans-LightItalic
// - GillSans-SemiBold
// - GillSans-SemiBoldItalic
// - GillSans-Bold
// - GillSans-BoldItalic
// - GillSans-UltraBold
//Family: Grantha Sangam MN
// - GranthaSangamMN-Regular
// - GranthaSangamMN-Bold
//Family: Helvetica
// - Helvetica
// - Helvetica-Oblique
// - Helvetica-Light
// - Helvetica-LightOblique
// - Helvetica-Bold
// - Helvetica-BoldOblique
//Family: Helvetica Neue
// - HelveticaNeue
// - HelveticaNeue-Italic
// - HelveticaNeue-UltraLight
// - HelveticaNeue-UltraLightItalic
// - HelveticaNeue-Thin
// - HelveticaNeue-ThinItalic
// - HelveticaNeue-Light
// - HelveticaNeue-LightItalic
// - HelveticaNeue-Medium
// - HelveticaNeue-MediumItalic
// - HelveticaNeue-Bold
// - HelveticaNeue-BoldItalic
// - HelveticaNeue-CondensedBold
// - HelveticaNeue-CondensedBlack
//Family: Hiragino Maru Gothic ProN
// - HiraMaruProN-W4
//Family: Hiragino Mincho ProN
// - HiraMinProN-W3
// - HiraMinProN-W6
//Family: Hiragino Sans
// - HiraginoSans-W3
// - HiraginoSans-W4
// - HiraginoSans-W5
// - HiraginoSans-W6
// - HiraginoSans-W7
// - HiraginoSans-W8
//Family: Hoefler Text
// - HoeflerText-Regular
// - HoeflerText-Italic
// - HoeflerText-Black
// - HoeflerText-BlackItalic
//Family: Impact
// - Impact
//Family: Kailasa
// - Kailasa
// - Kailasa-Bold
//Family: Kefa
// - Kefa-Regular
//Family: Khmer Sangam MN
// - KhmerSangamMN
//Family: Kohinoor Bangla
// - KohinoorBangla-Regular
// - KohinoorBangla-Light
// - KohinoorBangla-Semibold
//Family: Kohinoor Devanagari
// - KohinoorDevanagari-Regular
// - KohinoorDevanagari-Light
// - KohinoorDevanagari-Semibold
//Family: Kohinoor Gujarati
// - KohinoorGujarati-Regular
// - KohinoorGujarati-Light
// - KohinoorGujarati-Bold
//Family: Kohinoor Telugu
// - KohinoorTelugu-Regular
// - KohinoorTelugu-Light
// - KohinoorTelugu-Medium
//Family: Lao Sangam MN
// - LaoSangamMN
//Family: Malayalam Sangam MN
// - MalayalamSangamMN
// - MalayalamSangamMN-Bold
//Family: Marker Felt
// - MarkerFelt-Thin
// - MarkerFelt-Wide
//Family: Menlo
// - Menlo-Regular
// - Menlo-Italic
// - Menlo-Bold
// - Menlo-BoldItalic
//Family: Mishafi
// - DiwanMishafi
//Family: Mukta Mahee
// - MuktaMahee-Regular
// - MuktaMahee-Light
// - MuktaMahee-Bold
//Family: Myanmar Sangam MN
// - MyanmarSangamMN
// - MyanmarSangamMN-Bold
//Family: Noteworthy
// - Noteworthy-Light
// - Noteworthy-Bold
//Family: Noto Nastaliq Urdu
// - NotoNastaliqUrdu
// - NotoNastaliqUrdu-Bold
//Family: Noto Sans Kannada
// - NotoSansKannada-Regular
// - NotoSansKannada-Light
// - NotoSansKannada-Bold
//Family: Noto Sans Myanmar
// - NotoSansMyanmar-Regular
// - NotoSansMyanmar-Light
// - NotoSansMyanmar-Bold
//Family: Noto Sans Oriya
// - NotoSansOriya
// - NotoSansOriya-Bold
//Family: Noto Sans Syriac
// - NotoSansSyriac-Regular
// - NotoSansSyriac-Regular_Thin
// - NotoSansSyriac-Regular_ExtraLight
// - NotoSansSyriac-Regular_Light
// - NotoSansSyriac-Regular_Medium
// - NotoSansSyriac-Regular_SemiBold
// - NotoSansSyriac-Regular_Bold
// - NotoSansSyriac-Regular_ExtraBold
// - NotoSansSyriac-Regular_Black
//Family: Optima
// - Optima-Regular
// - Optima-Italic
// - Optima-Bold
// - Optima-BoldItalic
// - Optima-ExtraBlack
//Family: Palatino
// - Palatino-Roman
// - Palatino-Italic
// - Palatino-Bold
// - Palatino-BoldItalic
//Family: Papyrus
// - Papyrus
// - Papyrus-Condensed
//Family: Party LET
// - PartyLetPlain
//Family: PingFang HK
// - PingFangHK-Regular
// - PingFangHK-Ultralight
// - PingFangHK-Thin
// - PingFangHK-Light
// - PingFangHK-Medium
// - PingFangHK-Semibold
//Family: PingFang MO
// - PingFangMO-Regular
// - PingFangMO-Ultralight
// - PingFangMO-Thin
// - PingFangMO-Light
// - PingFangMO-Medium
// - PingFangMO-Semibold
//Family: PingFang SC
// - PingFangSC-Regular
// - PingFangSC-Ultralight
// - PingFangSC-Thin
// - PingFangSC-Light
// - PingFangSC-Medium
// - PingFangSC-Semibold
//Family: PingFang TC
// - PingFangTC-Regular
// - PingFangTC-Ultralight
// - PingFangTC-Thin
// - PingFangTC-Light
// - PingFangTC-Medium
// - PingFangTC-Semibold
//Family: Rockwell
// - Rockwell-Regular
// - Rockwell-Italic
// - Rockwell-Bold
// - Rockwell-BoldItalic
//Family: Savoye LET
// - SavoyeLetPlain
//Family: Sinhala Sangam MN
// - SinhalaSangamMN
// - SinhalaSangamMN-Bold
//Family: Snell Roundhand
// - SnellRoundhand
// - SnellRoundhand-Bold
// - SnellRoundhand-Black
//Family: STIX Two Math
// - STIXTwoMath-Regular
//Family: STIX Two Text
// - STIXTwoText
// - STIXTwoText-Italic
// - STIXTwoText_Medium
// - STIXTwoText-Italic_Medium-Italic
// - STIXTwoText_SemiBold
// - STIXTwoText-Italic_SemiBold-Italic
// - STIXTwoText_Bold
// - STIXTwoText-Italic_Bold-Italic
//Family: Symbol
// - Symbol
//Family: Tamil Sangam MN
// - TamilSangamMN
// - TamilSangamMN-Bold
//Family: Thonburi
// - Thonburi
// - Thonburi-Light
// - Thonburi-Bold
//Family: Times New Roman
// - TimesNewRomanPSMT
// - TimesNewRomanPS-ItalicMT
// - TimesNewRomanPS-BoldMT
// - TimesNewRomanPS-BoldItalicMT
//Family: Trebuchet MS
// - TrebuchetMS
// - TrebuchetMS-Italic
// - TrebuchetMS-Bold
// - Trebuchet-BoldItalic
//Family: Verdana
// - Verdana
// - Verdana-Italic
// - Verdana-Bold
// - Verdana-BoldItalic
//Family: Zapf Dingbats
// - ZapfDingbatsITC
//Family: Zapfino
// - Zapfino
