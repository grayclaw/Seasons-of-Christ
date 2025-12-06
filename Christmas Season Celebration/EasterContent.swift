//
//  Easter_Content.swift
//  Christmas Celebration
//
//  Created by Brian Homer Jr on 11/26/25.
//
import Foundation

enum EasterContent {
    static let data: [DailyContent] = [
        // 01
        DailyContent(
            scripture: ScriptureReference(
                reference: "Moses 1:39",
                textVariable: PearlOfGreatPriceTexts.moses_1_39,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/pgp/moses/1?lang=eng&id=p39#p39")
            ),
            talk: TalkReference(
                title: "The Great Plan of Happiness — Elder Dallin H. Oaks",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/1993/10/the-great-plan-of-happiness")
            )
        ),
        // 02
        DailyContent(
            scripture: ScriptureReference(
                reference: "2 Nephi 2:27",
                textVariable: BookOfMormonTexts.secondNephi_2_27,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/bofm/2-ne/2?lang=eng&id=p27#p27")
            ),
            talk: TalkReference(
                title: "The Three Rs of Agency — Elder Robert D. Hales",
                link: URL(string: "https://www.churchofjesuschrist.org/study/liahona/2006/06/the-three-rs-of-agency")
            )
        ),
        // 03
        DailyContent(
            scripture: ScriptureReference(
                reference: "Alma 34:9–10",
                textVariable: BookOfMormonTexts.alma_34_9_10,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/bofm/alma/34?lang=eng&id=p9-p10#p9")
            ),
            talk: TalkReference(
                title: "The Atonement: Our Greatest Hope — Elder Jeffrey R. Holland",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2019/04/46holland")
            )
        ),
        // 04
        DailyContent(
            scripture: ScriptureReference(
                reference: "Ether 12:6",
                textVariable: BookOfMormonTexts.ether_12_6,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/bofm/ether/12?lang=eng&id=p6#p6")
            ),
            talk: TalkReference(
                title: "Faith Is Not Blind — Elder Jeffrey R. Holland",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2017/04/faith-is-not-blind")
            )
        ),
        // 05
        DailyContent(
            scripture: ScriptureReference(
                reference: "Alma 36:17–21",
                textVariable: BookOfMormonTexts.alma_36_17_21,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/bofm/alma/36?lang=eng&id=p17-p21#p17")
            ),
            talk: TalkReference(
                title: "Repentance: A Joyful Choice — Elder Dale G. Renlund",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2020/04/37renlund")
            )
        ),
        // 06
        DailyContent(
            scripture: ScriptureReference(
                reference: "Acts 10:38",
                textVariable: NewTestamentTexts.acts_10_38,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/acts/10?lang=eng&id=p38#p38")
            ),
            talk: TalkReference(
                title: "The Ministry of Jesus Christ — Elder Russell M. Nelson",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2016/10/joy-and-spiritual-survival")
            )
        ),
        // 07
        DailyContent(
            scripture: ScriptureReference(
                reference: "Matthew 13:1–23",
                textVariable: NewTestamentTexts.matt_13_1_23,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/matt/13?lang=eng&id=p1-p23#p1")
            ),
            talk: TalkReference(
                title: "Parable of the Sower — Elder Dallin H. Oaks",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2015/04/the-parable-of-the-sower")
            )
        ),
        // 08
        DailyContent(
            scripture: ScriptureReference(
                reference: "Mark 5:25–34",
                textVariable: NewTestamentTexts.mark_5_25_34,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/mark/5?lang=eng&id=p25-p34#p25")
            ),
            talk: TalkReference(
                title: "Miracles — Elder Dallin H. Oaks",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2000/04/miracles")
            )
        ),
        // 09
        DailyContent(
            scripture: ScriptureReference(
                reference: "John 6:35",
                textVariable: NewTestamentTexts.john_6_35,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/john/6?lang=eng&id=p35#p35")
            ),
            talk: TalkReference(
                title: "The Living Bread — Elder D. Todd Christofferson",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2018/10/the-living-bread-which-came-down-from-heaven")
            )
        ),
        // 10
        DailyContent(
            scripture: ScriptureReference(
                reference: "John 10:11",
                textVariable: NewTestamentTexts.john_10_11,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/john/10?lang=eng&id=p11#p11")
            ),
            talk: TalkReference(
                title: "The Good Shepherd — Elder Gerrit W. Gong",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2017/04/the-good-shepherd")
            )
        ),
        // 11
        DailyContent(
            scripture: ScriptureReference(
                reference: "John 8:12",
                textVariable: NewTestamentTexts.john_8_12,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/john/8?lang=eng&id=p12#p12")
            ),
            talk: TalkReference(
                title: "The Light in Darkness — Elder Patrick Kearon",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2015/04/the-light-that-shines-in-darkness")
            )
        ),
        // 12
        DailyContent(
            scripture: ScriptureReference(
                reference: "Matthew 14:14",
                textVariable: NewTestamentTexts.matt_14_14,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/matt/14?lang=eng&id=p14#p14")
            ),
            talk: TalkReference(
                title: "The Pure Love of Christ — Elder Jeffrey R. Holland",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2019/04/charity")
            )
        ),
        // 13
        DailyContent(
            scripture: ScriptureReference(
                reference: "John 12:12–15",
                textVariable: NewTestamentTexts.john_12_12_15,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/john/12?lang=eng&id=p12-p15#p12")
            ),
            talk: TalkReference(
                title: "Hosanna to the King — President Dieter F. Uchtdorf",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2011/04/his-sacred-name-an-honored-life")
            )
        ),
        // 14
        DailyContent(
            scripture: ScriptureReference(
                reference: "Luke 22:19–20",
                textVariable: NewTestamentTexts.luke_22_19_20,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/luke/22?lang=eng&id=p19-p20#p19")
            ),
            talk: TalkReference(
                title: "In Remembrance of Him — Elder Quentin L. Cook",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2018/10/sacrament")
            )
        ),
        // 15
        DailyContent(
            scripture: ScriptureReference(
                reference: "Luke 22:39–44",
                textVariable: NewTestamentTexts.luke_22_39_44,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/luke/22?lang=eng&id=p39-p44#p39")
            ),
            talk: TalkReference(
                title: "None Were with Him — Elder Jeffrey R. Holland",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2009/10/none-were-with-him")
            )
        ),
        // 16
        DailyContent(
            scripture: ScriptureReference(
                reference: "Matthew 26:47–50",
                textVariable: NewTestamentTexts.matt_26_47_50,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/matt/26?lang=eng&id=p47-p50#p47")
            ),
            talk: TalkReference(
                title: "The Savior’s Last Hours — Elder Jeffrey R. Holland",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2006/04/the-atonement")
            )
        ),
        // 17
        DailyContent(
            scripture: ScriptureReference(
                reference: "Mark 15:1–15",
                textVariable: NewTestamentTexts.mark_15_1_15,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/mark/15?lang=eng&id=p1-p15#p1")
            ),
            talk: TalkReference(
                title: "The Redeemer’s Sacrifice — Elder D. Todd Christofferson",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2019/04/the-redeemer")
            )
        ),
        // 18
        DailyContent(
            scripture: ScriptureReference(
                reference: "Luke 23:33–46",
                textVariable: NewTestamentTexts.luke_23_33_46,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/luke/23?lang=eng&id=p33-p46#p33")
            ),
            talk: TalkReference(
                title: "He Will Redeem Us — Elder D. Todd Christofferson",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2013/10/forgiveness")
            )
        ),
        // DUPLICATE SCRIPTURE
        DailyContent(
            scripture: ScriptureReference(
                reference: "1 Peter 4:6",
                textVariable: NewTestamentTexts.firstPeter_4_6,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/1-pet/4?lang=eng&id=p6#p6")
            ),
            talk: TalkReference(
                title: "Father, Forgive Them — President Gordon B. Hinckley",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2007/04/forgiveness")
            )
        ),

        DailyContent(
            scripture: ScriptureReference(
                reference: "Matthew 27:50–54",
                textVariable: NewTestamentTexts.matt_27_50_54,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/matt/27?lang=eng&id=p50-p54#p50")
            ),
            talk: TalkReference(
                title: "Access to God — Elder Gerrit W. Gong",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2022/04/44easter")
            )
        ),

        DailyContent(
            scripture: ScriptureReference(
                reference: "1 Peter 3:18–20; 4:6",
                textVariable: NewTestamentTexts.firstPeter_3_18_20,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/1-pet/3?lang=eng&id=p18-p20#p18")
            ),
            talk: TalkReference(
                title: "The Spirit World Ministry — President Russell M. Nelson",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2018/04/the-lords-plan")
            )
        ),

        DailyContent(
            scripture: ScriptureReference(
                reference: "Alma 40:23",
                textVariable: BookOfMormonTexts.alma_40_23,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/bofm/alma/40?lang=eng&id=p23#p23")
            ),
            talk: TalkReference(
                title: "The Triumph of Christ — Elder Ulisses Soares",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2021/04/the-resurrection-of-jesus-christ")
            )
        ),

        DailyContent(
            scripture: ScriptureReference(
                reference: "Matthew 28:1–4",
                textVariable: NewTestamentTexts.matt_28_1_4,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/matt/28?lang=eng&id=p1-p4#p1")
            ),
            talk: TalkReference(
                title: "He Is Risen — Elder Cecil O. Samuelson",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2010/04/he-is-risen")
            )
        ),

        DailyContent(
            scripture: ScriptureReference(
                reference: "John 20:11–16",
                textVariable: NewTestamentTexts.john_20_11_16,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/john/20?lang=eng&id=p11-p16#p11")
            ),
            talk: TalkReference(
                title: "The First Witness — Elder Neil L. Andersen",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2015/04/witnesses")
            )
        ),

        DailyContent(
            scripture: ScriptureReference(
                reference: "Luke 24:13–32",
                textVariable: NewTestamentTexts.luke_24_13_32,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/luke/24?lang=eng&id=p13-p32#p13")
            ),
            talk: TalkReference(
                title: "Did Not Our Hearts Burn? — Elder Joseph B. Wirthlin",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2007/10/an-infinite-expanse")
            )
        ),

        DailyContent(
            scripture: ScriptureReference(
                reference: "John 20:19–29",
                textVariable: NewTestamentTexts.john_20_19_29,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/john/20?lang=eng&id=p19-p29#p19")
            ),
            talk: TalkReference(
                title: "Peace Be unto You — Elder Jeffrey R. Holland",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2018/04/peace")
            )
        ),

        DailyContent(
            scripture: ScriptureReference(
                reference: "John 21:15–17",
                textVariable: NewTestamentTexts.john_21_15_17,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/john/21?lang=eng&id=p15-p17#p15")
            ),
            talk: TalkReference(
                title: "Lovest Thou Me? — Elder Jeffrey R. Holland",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2003/04/the-shepherds-call")
            )
        ),

        DailyContent(
            scripture: ScriptureReference(
                reference: "Matthew 28:19–20",
                textVariable: NewTestamentTexts.matt_28_19_20,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/matt/28?lang=eng&id=p19-p20#p19")
            ),
            talk: TalkReference(
                title: "Go and Do — President Henry B. Eyring",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2018/10/go-and-do")
            )
        ),

        DailyContent(
            scripture: ScriptureReference(
                reference: "Acts 1:9–11",
                textVariable: NewTestamentTexts.acts_1_9_11,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/acts/1?lang=eng&id=p9-p11#p9")
            ),
            talk: TalkReference(
                title: "The Living Christ — The First Presidency & Quorum of the Twelve",
                link: URL(string: "https://www.churchofjesuschrist.org/study/ensign/2000/04/the-living-christ-the-testimony-of-the-apostles")
            )
        ),

        DailyContent(
            scripture: ScriptureReference(
                reference: "Doctrine & Covenants 76:22–24",
                textVariable: DoctrineCovenantsTexts.dc_76_22_24,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/dc-testament/dc/76?lang=eng&id=p22-p24#p22")
            ),
            talk: TalkReference(
                title: "The Ultimate Easter Message — President Russell M. Nelson",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2020/04/41nelson")
            )
        )
    ]
}
//
//Easter Scriptures
//Matthew 27:50–54
//Luke 23:46
//John 19:30
//John 19:38–42
//Matthew 28:1–10
//Luke 24:1–12
//John 20:1–18
//John 20:19–29
//Acts 1:9–11
//Mosiah 3:7–10
//Alma 7:10–13
//Helaman 14:15–17
//3 Nephi 8:5–25
//3 Nephi 9:13–22
//3 Nephi 11:1–17
//3 Nephi 11:18–28
//3 Nephi 15:1–9
//3 Nephi 17:1–10
//3 Nephi 18:1–10
//3 Nephi 26:1–6
//Doctrine and Covenants 19:16–1
//Doctrine and Covenants 76:22–24
//Doctrine and Covenants 110:2–10
//Doctrine and Covenants 138:11–24
//Moses 7:55–56
//Moses 1:6–7
//Abraham 3:27–28
//Joseph Smith—History 1:16–20
//Isaiah 53:3–9
