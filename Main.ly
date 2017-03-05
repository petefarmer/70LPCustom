% 70 LP Custom
\version "2.18.0"
\include "IntroGuitar.ly"
\include "IntroGuitarTwo.ly"
\include "SectionAGuitarOne.ly"
\include "SectionBGuitarOne.ly"
\include "SectionBGuitarOnePostSolo.ly"
\include "SectionAGuitarTwo.ly"
\include "SectionBGuitarTwo.ly"
\include "DummyChordsSectionA.ly"
\include "DummyChordsSectionB.ly"
\include "SoloChordsOne.ly"
\include "SoloGuitarOne.ly"
\include "SoloChordsTwo.ly"
\include "SoloGuitarTwo.ly"
\include "SoloGuitarThree.ly"
\include "EightBarRest.ly"

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
   \SectionBGuitarOne
   \SoloGuitarOne
   \SoloGuitarTwo
   \SoloGuitarThree
%   \SectionBGuitarOne
   \SectionBGuitarOnePostSolo
  } % Staff (Guitar)

 \new Staff {
  \set Staff.instrumentName = #"Guitar 2" 
  \clef "treble_8"
  \time 8/8 
  \key d \major
  \tempo 4 = 100
   \IntroGuitarTwo
   \SectionAGuitarTwo
   \SectionBGuitarTwo
   \EightBarRest
   \EightBarRest
   \EightBarRest
%   \SectionBGuitarTwo
  } % Staff (Guitar)
  \new Staff {
   \set Staff.instrumentName = #"chords"
   \clef "treble_8"
   \key d \major
%   \tempo 4 = 100
   \DummyChordsSectionA
   \DummyChordsSectionB
   \SoloChordsOne
   \SoloChordsTwo
   \SoloChordsOne % section 3 
   \DummyChordsSectionB
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
  \context { \Staff \RemoveEmptyStaves }
 }
\midi {}
} % score
} % book
