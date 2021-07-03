\version "2.22.1"
% automatically converted by musicxml2ly from -
\pointAndClickOff

\header {
    title =  "越後獅子"
    copyright = 
    "Transcription donated to the public domain, 2005 by Tom Potter"
    arranger =  "Arr. Y. Nagai , K. Kobatake"
    encodingsoftware =  "Finale v27.0 for Mac"
    encodingdate =  "2021-06-04"
    poet =  \markup \column {
        \line { "Source: \Japanese Popular Music: a collection of the popular music of Japan rendered in to the "}
        \line { "staff notation\, by Y. Nagai and K. Kobatake, 2nd ed., Osaka, S. Miki & Co., 1892, pp. 96-97."}
        \line { ""}
        \line { "Transcribed into Finale music notation by Tom Potter, 2005.  See http://www.daisyfield.com/music/"}
        \line { "Lyrics added by Karen Tanaka and Michael Good, 2006. See http://www.musicxml.com/"}
        }
    
    subtitle =  "Echigo-Jishi"
    }

#(define Ez_numbers_engraver
   (make-engraver
    (acknowledgers
     ((note-head-interface engraver grob source-engraver)
      (let* ((context (ly:translator-context engraver))
	     (tonic-pitch (ly:context-property context 'tonic))
	     (tonic-name (ly:pitch-notename tonic-pitch))
	     (grob-pitch
	      (ly:event-property (event-cause grob) 'pitch))
	     (grob-name (ly:pitch-notename grob-pitch))
	     (delta (modulo (- grob-name tonic-name) 7))
	     (note-names
	      (make-vector 7 (number->string (1+ delta)))))
	(ly:grob-set-property! grob 'note-names note-names))))))

#(set-global-staff-size 30)
\paper {
    
    paper-width = 21.59\cm
    paper-height = 27.93\cm
    top-margin = 0.18\cm
    bottom-margin = 1.27\cm
    left-margin = 1.9\cm
    right-margin = 1.27\cm
    between-system-space = 1.68\cm
    page-top-space = 1.68\cm
    }
\layout {
    \context { \Score
        autoBeaming = ##f
    }
}
PartPOneVoiceOne =  \transpose c d {
\relative a' { \easyHeadsOn
    \clef "treble" \time 2/4 
    \key c \major | % 1
    \stemUp a8 [ ^\markup{ \bold {Allegro} } _\f \stemUp a8 \stemUp b8
    \stemUp a8 ] | % 2
    \stemDown b8 [ \stemDown a8 \stemDown b8 \stemDown c8 ] | % 3
    \stemDown e8 [ \stemDown c8 \stemDown b8 \stemDown a8 ] | % 4
    \stemUp f4. r8 | % 5
    \stemUp f8 [ \stemUp a8 \stemUp b8 \stemUp a8 ] | % 6
    \stemUp f4. \stemUp e8 \break | % 7
    \stemUp f8 [ \stemUp a8 \stemUp f8 \stemUp e8 ] | % 8
    \stemUp d8 [ \stemUp d8 \stemUp d8 \stemUp e8 ] | % 9
    \stemUp f8 [ _\f \stemUp e8 \stemUp b8 \stemUp d8 ] |
    \barNumberCheck #10
    \stemUp e4. r8 | % 11
    \stemUp d8 _\mf \stemUp d4 \stemUp e8 | % 12
    \stemUp f8 \stemUp f4 \stemUp e8 \break | % 13
    \stemUp a8 [ \stemUp a8 \stemUp b8 \stemUp a8 ] | % 14
    \stemDown b4 \stemDown c8 [ \stemDown e8 ] | % 15
    \stemDown fis8 \stemDown fis4 \stemDown e8 | % 16
    \stemDown c8 [ \stemDown c8 \stemDown c8 \stemDown e8 ] | % 17
    \stemDown fis8 \stemDown fis4 \stemDown e8 | % 18
    \stemDown c8 [ \stemDown e16 \stemDown c16 ] \stemUp b8 [ \stemUp a8
    ] \break | % 19
    \stemDown b8 [ \stemDown c8 \stemDown e8 \stemDown a,8 ] |
    \barNumberCheck #20
    \stemUp c8 [ \stemUp b8 \stemUp a8 \stemUp f8 ] | % 21
    \stemUp e4. \stemUp f8 | % 22
    \stemUp a8 [ \stemUp b8 ] \stemDown c4 | % 23
    \stemDown e4 \stemDown c8 [ \stemDown b8 ] | % 24
    \stemUp a4 \stemUp a8 [ \stemUp f8 ] \break | % 25
    \stemUp a4. \stemDown b8 | % 26
    \stemUp c8 [ \stemUp b8 \stemUp a8 \stemUp f8 ] | % 27
    \stemUp e4. \stemUp e8 | % 28
    \stemDown b'8 [ \stemDown c8 \stemDown c8 \stemDown b8 ] | % 29
    \stemDown c8 [ \stemDown e8 \stemDown c8 \stemDown b8 ] |
    \barNumberCheck #30
    \stemUp a8 [ \stemUp b8 \stemUp c8 \stemUp a8 ] \break | % 31
    \stemUp f8 [ \stemUp a16 \stemUp f16 ] \stemUp e8 [ \stemUp d8 ] | % 32
    \stemUp e8 [ \stemUp f8 ] \stemUp a16 [ \stemUp a16 \stemUp a16
    \stemUp a16 ] | % 33
    \stemDown b8 [ \stemDown b8 ] \stemDown c8 [ \stemDown c16 \stemDown
    c16 ] | % 34
    \stemDown b8 [ \stemDown c16 \stemDown b16 ] \stemUp a8 [ \stemUp b16
    \stemUp a16 ] | % 35
    \stemUp f8 [ \stemUp e8 \stemUp d8 \stemUp d8 ] \break | % 36
    r8 \stemUp e8 [ \stemUp f8 \stemUp a8 ] | % 37
    \stemUp f8 [ \stemUp e8 ] \stemUp b8 [ \stemUp b16 \stemUp b16 ] | % 38
    \stemUp b8 [ \stemUp d8 ] \stemUp e4 | % 39
    r8 \stemDown c'8 ( \stemDown e4 ) | \barNumberCheck #40
    \stemDown c8 [ \stemDown b8 \stemDown a8 \stemDown b8 ] | % 41
    \stemDown c8 ( [ \stemDown a8 ) ] \stemUp f4 \break | % 42
    \stemUp e8 [ \stemUp d8 \stemUp e8 \stemUp a8 ] | % 43
    \stemUp f4. \stemUp e8 | % 44
    \stemUp f8 [ \stemUp f16 \stemUp f16 ] \stemUp e8 [ \stemUp d8 ] | % 45
    \stemUp d8 [ \stemUp e8 ] r8 \stemUp b'16. ( [ \stemUp a32 ] | % 46
    \stemUp f4 ) \stemUp f4 ( | % 47
    \stemUp e4 ) r4 \bar "|."
    }}

PartPOneVoiceOneLyricsOne =  \lyricmode {\set ignoreMelismata =
    ##t\skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
    \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
    \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
    \skip1 \skip1 \skip1 \skip1 \skip1 \skip1 "オノ" "ガ" "ス" "ガタ" "ヲ" "ハ"
    "ナ" "ト" "ミ" "テ " __\skip1 __ "　" "ニ " ____ "ワ " ____ "ニ " ____ "　"
    "サイ " ____ "タ " __\skip1 __ "リ" \skip1 "　" "サ" "カ " ____ "セ " ____
    "タ " ____ "リ" "ソ" "コ" "ナ" "オ" "ケ" "サ " ____ "ニ" "イ" "ナ" "コ" "ト" "イ "
    ____ "ワ " ____ "レ" \skip1 \skip1 "ネ" "マ" "リ" "ネ" "マ" "ラ" "ズ" "マ" "チ"
    "ア" "カ" "ス" \skip1 \skip1 \skip1 "ゴ" "ザ" "レ" "ハ" "ナ" "シ" "マ" "ショ"
    "　" "コン" "コ" "マ" "ツ" "ノ " ____ "コ" "カ" \skip1 "ゲ" "デ" \skip1 "マ" "ツ"
    "ノ" "ハ" "ノ" "ヨ" "ニ" "コン" "コ" "マ" "ヤ" "カ" "ニ" "ヒ" "イ" "テ " __\skip1
    __ "ウ" "ト " __\skip1 __ "ヤ " __\skip1 __ "シ" "シ " ____ "ノ " __\skip1
    \skip1 \skip1 __ "　" \skip1 "キョ " __\skip1 __ "ク " ____
    }


% The score definition
\score {
    <<
        
        \new Staff
        <<
            
            \context Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                \new Lyrics \lyricsto "PartPOneVoiceOne" { \set stanza = "1." \PartPOneVoiceOneLyricsOne }
                
                >>
            >>
        
        >>
    \layout {
        \context {
            \Voice
            \consists \Ez_numbers_engraver
        }
    }
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 92 }
    }

