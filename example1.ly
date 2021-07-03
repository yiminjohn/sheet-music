\version "2.12.2"
#(set-global-staff-size 20)

% un-comment the next line to remove Lilypond tagline:
% \header { tagline="" }

\pointAndClickOff

\paper {
  print-all-headers = ##t % allow per-score headers

  % un-comment the next line for A5:
  % #(set-default-paper-size "a5" )

  % un-comment the next line for no page numbers:
  % print-page-number = ##f

  % un-comment the next 3 lines for a binding edge:
  % two-sided = ##t
  % inner-margin = 20\mm
  % outer-margin = 10\mm

  % un-comment the next line for a more space-saving header layout:
  % scoreTitleMarkup = \markup { \center-column { \fill-line { \magnify #1.5 { \bold { \fromproperty #'header:dedication } } \magnify #1.5 { \bold { \fromproperty #'header:title } } \fromproperty #'header:composer } \fill-line { \fromproperty #'header:instrument \fromproperty #'header:subtitle \smaller{\fromproperty #'header:subsubtitle } } } }
}

\score {
<< \override Score.BarNumber #'break-visibility = #end-of-line-invisible
\override Score.BarNumber #'Y-offset = -1
\set Score.barNumberVisibility = #(every-nth-bar-number-visible 1)

%% === BEGIN JIANPU STAFF ===
    \new RhythmicStaff \with {
    \consists "Accidental_engraver"
    %% Get rid of the stave but not the barlines.
    %% This changes between Lilypond versions.
    %% \remove Staff_symbol_engraver %% worked pre-2.18, but 2.18 results in missing barlines (adding Barline_engraver won't help). Do this instead:
    \override StaffSymbol #'line-count = #0 %% tested in 2.15.40, 2.16.2, 2.18.0 and 2.18.2
    \override BarLine #'bar-extent = #'(-2 . 2) %% LilyPond 2.18: please make barlines as high as the time signature even though we're on a RhythmicStaff (2.16 and 2.15 don't need this although its presence doesn't hurt; Issue 3685 seems to indicate they'll fix it post-2.18)
    }
    { \new Voice="jianpu" {
    \override Beam #'transparent = ##f % (needed for LilyPond 2.18 or the above switch will also hide beams)
    \override Stem #'direction = #DOWN
    \override Stem #'length-fraction = #0
    \override Beam #'beam-thickness = #0.1
    \override Beam #'length-fraction = #0.5
    \override Voice.Rest #'style = #'neomensural % this size tends to line up better (we'll override the appearance anyway)
    \override Accidental #'font-size = #-4
    \override Tie #'staff-position = #2.5
    \override TupletBracket #'bracket-visibility = ##t
    \tupletUp
    \set Voice.chordChanges = ##t % 2.19 bug workaround

    \override Staff.TimeSignature #'style = #'numbered
    \override Staff.Stem #'transparent = ##t
     \mark \markup{1=E}
\time 3/4
#(define (note-nought grob grob-origin context)
  (if (and (eq? (ly:context-property context 'chordChanges) #t)
      (or (grob::has-interface grob 'note-head-interface)
        (grob::has-interface grob 'rest-interface)))
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "0")))))))
  \applyOutput #'Voice #note-nought r4
  \applyOutput #'Voice #note-nought r4
#(define (note-five grob grob-origin context)
  (if (and (eq? (ly:context-property context 'chordChanges) #t)
      (or (grob::has-interface grob 'note-head-interface)
        (grob::has-interface grob 'rest-interface)))
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "5")))))))
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
  \applyOutput #'Voice #note-five g'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
  \applyOutput #'Voice #note-five g'8]
#(define (note-six grob grob-origin context)
  (if (and (eq? (ly:context-property context 'chordChanges) #t)
      (or (grob::has-interface grob 'note-head-interface)
        (grob::has-interface grob 'rest-interface)))
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "6")))))))
| %{ bar 2: %}
  \applyOutput #'Voice #note-six a'4
  \applyOutput #'Voice #note-five g'4
#(define (note-one grob grob-origin context)
  (if (and (eq? (ly:context-property context 'chordChanges) #t)
      (or (grob::has-interface grob 'note-head-interface)
        (grob::has-interface grob 'rest-interface)))
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "1")))))))
  \applyOutput #'Voice #note-one c''4^.
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 #(define (note-seven grob grob-origin context)
  (if (and (eq? (ly:context-property context 'chordChanges) #t)
      (or (grob::has-interface grob 'note-head-interface)
        (grob::has-interface grob 'rest-interface)))
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "7")))))))
| %{ bar 3: %}
  \applyOutput #'Voice #note-seven b'4 ~
#(define (note-dashseven grob grob-origin context)
  (if (and (eq? (ly:context-property context 'chordChanges) #t)
      (or (grob::has-interface grob 'note-head-interface)
        (grob::has-interface grob 'rest-interface)))
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "–")))))))
  \applyOutput #'Voice #note-dashseven b'4
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
  \applyOutput #'Voice #note-five g'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
  \applyOutput #'Voice #note-five g'8]
| %{ bar 4: %}
  \applyOutput #'Voice #note-six a'4
  \applyOutput #'Voice #note-five g'4
#(define (note-two grob grob-origin context)
  (if (and (eq? (ly:context-property context 'chordChanges) #t)
      (or (grob::has-interface grob 'note-head-interface)
        (grob::has-interface grob 'rest-interface)))
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "2")))))))
  \applyOutput #'Voice #note-two d''4^.
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 | %{ bar 5: %}
  \applyOutput #'Voice #note-one c''4^. ~
#(define (note-dashone grob grob-origin context)
  (if (and (eq? (ly:context-property context 'chordChanges) #t)
      (or (grob::has-interface grob 'note-head-interface)
        (grob::has-interface grob 'rest-interface)))
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "–")))))))
  \applyOutput #'Voice #note-dashone c''4
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
  \applyOutput #'Voice #note-five g'8[
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
  \applyOutput #'Voice #note-five g'8]
| %{ bar 6: %}
  \applyOutput #'Voice #note-five g''4^.
#(define (note-three grob grob-origin context)
  (if (and (eq? (ly:context-property context 'chordChanges) #t)
      (or (grob::has-interface grob 'note-head-interface)
        (grob::has-interface grob 'rest-interface)))
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "3")))))))
  \applyOutput #'Voice #note-three e''4^.
  \applyOutput #'Voice #note-one c''4^.
| %{ bar 7: %}
  \applyOutput #'Voice #note-seven b'4
(
  \applyOutput #'Voice #note-six a'4
)
\fermata
#(define (note-four grob grob-origin context)
  (if (and (eq? (ly:context-property context 'chordChanges) #t)
      (or (grob::has-interface grob 'note-head-interface)
        (grob::has-interface grob 'rest-interface)))
    (begin
      (ly:grob-set-property! grob 'stencil
        (grob-interpret-markup grob
          (make-lower-markup 0.5 (make-bold-markup "4")))))))
\set stemLeftBeamCount = #0
\set stemRightBeamCount = #1
  \applyOutput #'Voice #note-four f''8[^.
\set stemLeftBeamCount = #1
\set stemRightBeamCount = #1
  \applyOutput #'Voice #note-four f''8]^.
| %{ bar 8: %}
  \applyOutput #'Voice #note-three e''4^.
  \applyOutput #'Voice #note-one c''4^.
  \applyOutput #'Voice #note-two d''4^.
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0 | %{ bar 9: %}
  \applyOutput #'Voice #note-one c''4^. ~
\once \override Tie #'transparent = ##t \once \override Tie #'staff-position = #0   \applyOutput #'Voice #note-dashone c''4 ~
  \applyOutput #'Voice #note-dashone c''4
\bar "|." } }
% === END JIANPU STAFF ===


% === BEGIN 5-LINE STAFF ===
    \new Staff { \new Voice="5line" {
    #(set-accidental-style 'modern-cautionary)
    \override Staff.TimeSignature #'style = #'numbered
    \set Voice.chordChanges = ##f % for 2.19.82 bug workaround
 \transpose c a { \key c \major  \time 3/4 r4 r4 g'8 g'8 | %{ bar 2: %} a'4 g'4 c''4 | %{ bar 3: %} b'2 g'8 g'8 | %{ bar 4: %} a'4 g'4 d''4 | %{ bar 5: %} c''2 g'8 g'8 | %{ bar 6: %} g''4 e''4 c''4 | %{ bar 7: %} b'4 ( a'4 ) \fermata f''8 f''8 | %{ bar 8: %} e''4 c''4 d''4 | %{ bar 9: %} c''2. } \bar "|." } }
% === END 5-LINE STAFF ===

>>
\header{
title="Song Title Here"
}
\layout{} }
\score {
\unfoldRepeats
<< 

% === BEGIN MIDI STAFF ===
    \new Staff { \new Voice="midi" { \transpose c c { \key c \major  \time 3/4 r4 r4 g'8 g'8 | %{ bar 2: %} a'4 g'4 c''4 | %{ bar 3: %} b'4 ~ b'4 g'8 g'8 | %{ bar 4: %} a'4 g'4 d''4 | %{ bar 5: %} c''4 ~ c''4 g'8 g'8 | %{ bar 6: %} g''4 e''4 c''4 | %{ bar 7: %} b'4 ( a'4 ) \fermata f''8 f''8 | %{ bar 8: %} e''4 c''4 d''4 | %{ bar 9: %} c''4 ~ c''4 ~ c''4 } } }
% === END MIDI STAFF ===

>>
\header{
title="Song Title Here"
}
\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 84 4)}} }
