//
//  Christmas_content.swift
//  Christmas Celebration
//
//  Created by Brian Homer Jr on 11/26/25.
//
import Foundation

enum ChristmasContent {
    static let data: [DailyContent] = [
        // 1
        DailyContent(
            scripture: ScriptureReference(
                reference: "Genesis 49:10",
                textVariable: genesis_49_10,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/ot/gen/49?lang=eng&id=p10#p10")
            ),
            talk: TalkReference(
                title: "Drawing the Power of Jesus Christ into Our Lives — President Nelson",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2017/04/drawing-the-power-of-jesus-christ-into-our-lives")
            ),
        ),
        // 2
        DailyContent(
            scripture: ScriptureReference(
                reference: "Numbers 24:17",
                textVariable: numbers_24_17,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/ot/num/24?lang=eng&id=p17#p17")
            ),
            talk: TalkReference(
                title: "The Light That Shineth in Darkness — Elder Kearon",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2022/10/14kearon")
            ),
        ),
        // 3
        DailyContent(
            scripture: ScriptureReference(
                reference: "Psalm 22:9–10",
                textVariable: psalms_22_9_10,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/ot/ps/22?lang=eng&id=p9-p10#p9")
             ),
            talk: TalkReference(
                title: "Lift Where You Stand — President Uchtdorf",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2008/10/lift-where-you-stand")
            ),
        ),
        // 4
        DailyContent(
            scripture: ScriptureReference(
                reference: "Deuteronomy 18:15",
                textVariable: deuteronomy_18_15,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/ot/deut/18?lang=eng&id=p15#p15")
            ),
            talk: TalkReference(
                title: "The Light of the Perfect Leader — President Monson",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2005/10/the-light-of-the-perfect-leader")
            ),
        ),
        // 5
        DailyContent(
            scripture: ScriptureReference(
                reference: "Isaiah 11:1–2",
                textVariable: isaiah_11_1_2,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/ot/isa/11?lang=eng&id=p1-p2#p1")
            ),
            talk: TalkReference(
                title: "We Talk of Christ — Elder Christofferson",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2020/10/13christofferson")
            ),
        ),
        // 6
        DailyContent(
            scripture: ScriptureReference(
                reference: "Helaman 16:1–23",
                textVariable: helaman_16_1_23,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/bofm/hel/16?lang=eng&id=p1-p23#p1")
            ),
            talk: TalkReference(
                title: "What Thinks Christ of Me? — Elder Andersen",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2012/04/what-thinks-christ-of-me")
            ),
        ),
        // 7
        DailyContent(
            scripture: ScriptureReference(
                reference: "Mosiah 15:1–9, 11",
                textVariable: mosiah_15_1_9_11,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/bofm/mosiah/15?lang=eng&id=p1-p9,p11#p1")
            ),
            talk: TalkReference(
                title: "The Living Bread Which Came Down from Heaven — Elder Christofferson",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2017/10/the-living-bread-which-came-down-from-heaven")
            ),
        ),
        // 8
        DailyContent(
            scripture: ScriptureReference(
                reference: "Alma 5:14",
                textVariable: alma_5_14,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/bofm/alma/5?lang=eng&id=p14#p14")
            ),
            talk: TalkReference(
                title: "The Infinite Power of Hope — President Uchtdorf",
                link: URL(string: "https://www.churchofjesuschrist.org/study/general-conference/2008/10/the-infinite-power-of-hope")
            ),
        ),
        // 09
        DailyContent(
            scripture: ScriptureReference(
                reference: "John 14:27",
                textVariable: john_14_27,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/john/14?lang=eng&id=p27#p27")
            ),
            talk: TalkReference(
                title: "Glad Tidings of Love and Joy",
                link: URL(string: "https://www.churchofjesuschrist.org/study/liahona/2025/01/04-glad-tidings-of-love-and-joy")
            ),
        ),
        // 10
        DailyContent(
            scripture: ScriptureReference(
                reference: "Matthew 25:40",
                textVariable: matt_25_40,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/matt/25?lang=eng&id=p40#p40")
            ),
            talk: TalkReference(
                title: "Mary, The Mother of Jesus — Bible Video",
                link: URL(string: "https://www.churchofjesuschrist.org/media/video/2011-03-0100-mary-is-visited-by-angel-gabriel")
            ),
        ),
        // 11
        DailyContent(
            scripture: ScriptureReference(
                reference: "Matthew 5:14–16",
                textVariable: matt_5_14_16,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/matt/5?lang=eng&id=p14-p16#p14")
            ),
            talk: TalkReference(
                title: "Mary’s Song — Bible Video",
                link: URL(string: "https://www.churchofjesuschrist.org/media/video/2011-12-0103-marys-song")
            ),
        ),
        // 12
        DailyContent(
            scripture: ScriptureReference(
                reference: "2 Nephi 2:6–8",
                textVariable: secondNephi_2_6_8,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/bofm/2-ne/2?lang=eng&id=p6-p8#p6")
            ),
            talk: TalkReference(
                title: "Shepherds Learn of the Birth of Christ — Bible Video",
                link: URL(string: "https://www.churchofjesuschrist.org/media/video/2011-12-0102-shepherds-learn-of-the-birth-of-christ")
            ),
        ),
        // 13
        DailyContent(
            scripture: ScriptureReference(
                reference: "Mosiah 3:5–8",
                textVariable: mosiah_3_5_8,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/bofm/mosiah/3")
            ),
            talk: TalkReference(
                title: "Samuel and the Star — Book of Mormon Video",
                link: URL(string: "https://www.churchofjesuschrist.org/media/video/2019-11-1100-samuel-and-the-star")
            ),
        ),
        // 14
        DailyContent(
            scripture: ScriptureReference(
                reference: "Helaman 14:1–9",
                textVariable: helaman_14_1_9,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/bofm/hel/14")
            ),
            talk: TalkReference(
                title: "Signs of Christ’s Birth — Book of Mormon Video",
                link: URL(string: "https://www.churchofjesuschrist.org/media/video/2019-11-1200-signs-of-christs-birth")
            ),
        ),
        // 15
        DailyContent(
            scripture: ScriptureReference(
                reference: "Ether 3:6–16",
                textVariable: ether_3_6_16,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/bofm/ether/3")
            ),
            talk: TalkReference(
                title: "Prophetic Announcements of Christ’s Birth",
                link: URL(string: "https://www.churchofjesuschrist.org/study/broadcasts/first-presidency-christmas-devotional/2016/12/prophetic-announcements-of-christs-birth")
            ),
        ),
        // 16
        DailyContent(
            scripture: ScriptureReference(
                reference: "1 Nephi 10:4",
                textVariable: firstNephi_10_4,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/bofm/1-ne/10?lang=eng&id=p4#p4")
            ),
            talk: TalkReference(
                title: "Wise Men Still Seek Him — Video",
                link: URL(string: "https://www.churchofjesuschrist.org/media/video/2011-12-0101-wise-men-still-seek-him")
            ),
        ),
        // 17
        DailyContent(
            scripture: ScriptureReference(
                reference: "2 Nephi 25:19",
                textVariable: secondNephi_25_19_26,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/bofm/2-ne/25?lang=eng&id=p19,p26#p19")
            ),
            talk: TalkReference(
                title: "The Character of Christ — Elder Bednar",
                link: URL(string: "https://speeches.byu.edu/talks/david-a-bednar/character-christ/")
            ),
        ),
        // 18
        DailyContent(
            scripture: ScriptureReference(
                reference: "Doctrine & Covenants 93:11–17",
                textVariable: dC_93_11_17,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/dc-testament/dc/93?lang=eng&id=p11-p17#p11")
            ),
            talk: TalkReference(
                title: "A Savior Is Born — Video",
                link: URL(string: "https://www.churchofjesuschrist.org/media/video/2015-12-1000-a-savior-is-born")
            ),
        ),
        // 19
        DailyContent(
            scripture: ScriptureReference(
                reference: "Joseph Smith—History 1:14–20",
                textVariable: js_h_1_14_20,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/pgp/js-h/1?lang=eng&id=p14-p20#p14")
            ),
            talk: TalkReference(
                title: "Why We Need a Savior — Video",
                link: URL(string: "https://www.churchofjesuschrist.org/media/video/2015-12-1000-why-we-need-a-savior")
            ),
        ),
        // 20
        DailyContent(
            scripture: ScriptureReference(
                reference: "1 Nephi 11:13–23",
                textVariable: firstNephi_11_13_23,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/bofm/1-ne/11?lang=eng&id=p13-p23#p13")
            ),
            talk: TalkReference(
                title: "Because of Him — Video",
                link: URL(string: "https://www.churchofjesuschrist.org/media/video/2014-04-1030-because-of-him")
            ),
        ),
        // 21
        DailyContent(
            scripture: ScriptureReference(
                reference: "Micah 5:2",
                textVariable: micah_5_2,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/ot/micah/5?lang=eng&id=p2#p2")
            ),
            talk: TalkReference(
                title: "The Christ Child — Trailer",
                link: URL(string: "https://youtu.be/2JMEcx_dXRE")
            ),
        ),
        // 22
        DailyContent(
            scripture: ScriptureReference(
                reference: "John 1:1–5",
                textVariable: john_1_1_5,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/john/1?lang=eng&id=p1-p5#p1")
            ),
            talk: TalkReference(
                title: "Glad Tidings of Great Joy — Ensign",
                link: URL(string: "https://www.churchofjesuschrist.org/study/ensign/2010/12/glad-tidings-of-great-joy")
            ),
        ),
        // 23
        DailyContent(
            scripture: ScriptureReference(
                reference: "Alma 7:10–13",
                textVariable: alma_7_10_13,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/bofm/alma/7?lang=eng&id=p10-p13#p10")
            ),
            talk: TalkReference(
                title: "The Nativity — Bible Video",
                link: URL(string: "https://www.churchofjesuschrist.org/media/video/2011-12-0100-the-nativity")
            ),
        ),
        // 24
        DailyContent(
            scripture: ScriptureReference(
                reference: "3 Nephi 1:5–21",
                textVariable: thirdNephi_1_5_21,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/bofm/3-ne/1?lang=eng&id=p5-p21#p5")
            ),
            talk: TalkReference(
                title: "The Living Christ — Testimony of the Apostles",
                link: URL(string: "https://www.churchofjesuschrist.org/study/manual/the-living-christ-the-testimony-of-the-apostles/the-living-christ-the-testimony-of-the-apostles")
            ),
        ),
        // 25
        DailyContent(
            scripture: ScriptureReference(
                reference: "Luke 1",
                textVariable: luke_1,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/luke/1?lang=eng&id=p1")
            ),
            talk: TalkReference(
                title: "He Is Risen — Video",
                link: URL(string: "https://www.churchofjesuschrist.org/media/video/2019-04-0100-he-is-risen")
            ),
        ),
        // 26
        DailyContent(
            scripture: ScriptureReference(
                reference: "Matthew 1",
                textVariable: matt_1,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/matt/1?lang=eng&id=p1")
            ),
            talk: TalkReference(
                title: "Peace in Christ — Music Video",
                link: URL(string: "https://www.churchofjesuschrist.org/media/music/video/2018-01-0001-peace-in-christ")
            ),
        ),
        // 27
        DailyContent(
            scripture: ScriptureReference(
                reference: "Matthew 2",
                textVariable: matt_2,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/matt/2?lang=eng&id=p1")
            ),
            talk: TalkReference(
                title: "Light the World — Initiative Video",
                link: URL(string: "https://www.churchofjesuschrist.org/comeuntochrist/light-the-world")
            ),
        ),
        // 28
        DailyContent(
            scripture: ScriptureReference(
                reference: "Luke 2",
                textVariable: luke_2,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/luke/2?lang=eng&id=p1")
            ),
            talk: TalkReference(
                title: "The Christ Child — Full Nativity Film",
                link: URL(string: "https://www.churchofjesuschrist.org/media/video/2019-09-0050-the-christ-child-a-nativity-story-lighttheworld")
            ),
        ),
        // 29
        DailyContent(
            scripture: ScriptureReference(
                reference: "John 3:16–17",
                textVariable: john_3_16_17,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/nt/john/3?lang=eng&id=p16-p17#p16")
            ),
            talk: TalkReference(
                title: "The Living Christ — President Gordon B. Hinckley",
                link: URL(string: "https://www.churchofjesuschrist.org/study/ensign/2000/01/the-living-christ-the-testimony-of-the-apostles")
            ),
        ),
        // 30
        DailyContent(
            scripture: ScriptureReference(
                reference: "Isaiah 9:6",
                textVariable: isaiah_9_6,
                link: URL(string: "https://www.churchofjesuschrist.org/study/scriptures/ot/isa/9?lang=eng&id=p6#p6")
            ),
            talk: TalkReference(
                title: "The Birth of Jesus Christ — Bible Video (most common)",
                link: URL(string: "https://www.churchofjesuschrist.org/media/video/2011-12-0001-the-birth-of-jesus-christ")
            ),
        )
    ]
}

//Christmas Scriptures
//1 Nephi 11:13–23
//Isaiah 7:14
//Isaiah 53:3–9
//Joseph Smith — History 1:14–20
//Helaman 16:1–23
//Luke 1
//2 Nephi 2:6–8
//Matthew 1
//Mosiah 3:5–8
//Isaiah 9:6
//Alma 7:10–13
//Doctrine and Covenants 93:11–17
//3 Nephi 11:10–11
//John 1:1–5
//Helaman 14:1–9
//1 Nephi 10:4
//Mosiah 15:1–9, 11
//Matthew 2
//2 Nephi 25:19, 26
//John 3:16–17
//Alma 5:14
//Micah 5:2
//3 Nephi 1:5–21
//Matthew 5:14–16
//Mosiah 2:17
//John 20
//Ether 3:6–16
//Matthew 25:40
//Luke 2
//John 14:27
