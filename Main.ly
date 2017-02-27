% '61 SGLP
\version "2.18.0"
\include "IntroGuitar.ly"
\include "SectionAGuitarOne.ly"
\include "SectionAGuitarTwo.ly"
\include "DummyChordsSectionA.ly"

\book {
 \header {
  title = "70 LP Custom"
  subtitle = "DRAFT"
  subsubtitle = "v0.1"
  composer = "John Jorgenson"
  copyright = \markup { \char ##x00A9 Copyright Jorgensongs 2014 }
 }

\score {
%\unfoldRepeats
\new StaffGroup <<
 \new Staff {
  \set Staff.instrumentName = #"Guitar 1" 
  \clef "treble_8"
  \time 8/8 
  \key d \major
  \tempo 4 = 100
   \IntroGuitar
   \SectionAGuitarOne

  } % Staff (Guitar)

 \new Staff {
  \set Staff.instrumentName = #"Guitar 2" 
  \clef "treble_8"
  \time 8/8 
  \key d \major
  \tempo 4 = 100
%   \IntroGuitar
%   \SectionAGuitarTwo

  } % Staff (Guitar)
  \new Staff {
   \set Staff.instrumentName = #"chords"
   \clef "treble_8"
   \key d \major
%   \tempo 4 = 100
   \DummyChordsSectionA
  }
 >> % StaffGroup
 \layout {
  \context {
   \Score {
    \override StaffGrouper.staff-staff-spacing.padding = #5
    \override StaffGrouper.staff-staff-spacing.basic-distance = #5
   }
  }
  \context { \TabStaff \remove Clef_engraver }
 }
\midi {}
} % score
} % book
