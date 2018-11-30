% 70 LP Custom
\version "2.19.0"
\include "SectionAGuitarOneSimple.ly"
\include "SectionABassSimple.ly"

\book {
 \header {
  title = "70 LP Custom"
  subtitle = "DRAFT"
  subsubtitle = "v0.1"
  composer = "John Jorgenson"
  copyright = \markup { \char ##x00A9 Copyright Jorgensongs 2014 }
 }

\score {
<<
%\unfoldRepeats
\new StaffGroup {
 <<
 \new Staff = "main" {
%  \bravuraOn
  \set Staff.instrumentName = #"Guitar 1" 
  \clef "treble_8"
  \time 4/4 
  \key d \major
  \tempo 4 = 100
   \SectionAGuitarOneSimple
  }
  \new Staff {
   \clef "bass"
   \set Staff.instrumentName = #"Bass"
   \SectionABassSimple
  }
 >>
} % StaffGroup
>>
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
