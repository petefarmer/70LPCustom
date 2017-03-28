% 70 LP Custom
\version "2.18.0"
\include "IntroGuitar.ly"
\include "IntroBass.ly"
\include "IntroOrgan.ly"
\include "IntroDrums.ly"
\include "IntroGuitarTwo.ly"
\include "SectionAGuitarOneSimple.ly"
\include "SectionAOrganSimple.ly"
\include "SectionABassSimple.ly"
\include "SectionABassSimpleCoda.ly"
\include "SectionBBass.ly"
\include "SectionBBassPostSolo.ly"
\include "SectionADrumsSimple.ly"
\include "SectionAGuitarOne.ly"
\include "SectionAGuitarOneCoda.ly"
\include "SectionBGuitarOne.ly"
\include "SectionBGuitarOneSoloPickup.ly"
\include "SectionBGuitarOnePostSolo.ly"
\include "SectionAGuitarTwo.ly"
\include "SectionAGuitarTwoCoda.ly"
\include "SectionBGuitarTwo.ly"
\include "SectionBGuitarTwoPostSolo.ly"
\include "DummyChordsSectionA.ly"
\include "DummyChordsSectionB.ly"
\include "SoloChordsOne.ly"
\include "SoloGuitarOne.ly"
\include "SoloChordsTwo.ly"
\include "SoloGuitarTwo.ly"
\include "SoloGuitarThree.ly"
\include "SoloBassOne.ly"
\include "SoloBassTwo.ly"

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
  \set Staff.instrumentName = #"Guitar 1" 
  \clef "treble_8"
  \time 8/8 
  \key d \major
  \tempo 8 = 200
   \IntroGuitar
   \SectionAGuitarOneSimple
   <<
    \SectionAGuitarOne
    \\
    \SectionAGuitarTwo
   >>
   <<
    \SectionBGuitarOneSoloPickup
    \\
    \SectionBGuitarTwo
   >>
   \SoloGuitarOne
   \SoloGuitarTwo
   \SoloGuitarThree
   <<
   \SectionBGuitarOnePostSolo
   \\
   \SectionBGuitarTwoPostSolo
   >>
   <<
   \SectionAGuitarOneCoda
   \\
   \SectionAGuitarTwoCoda
   >>
  }
  \new Staff {
   \set Staff.instrumentName = #"Bass"
   \IntroBass
   \SectionABassSimple
   \SectionABassSimple
   \SectionBBass
   \SoloBassOne
   \SoloBassTwo
   \SoloBassOne
   \SectionBBassPostSolo
   \SectionABassSimpleCoda
  }
%{
  \new PianoStaff <<
   \set PianoStaff.instrumentName = #"Organ"
   \new Staff 
%    \IntroOrganUpper
    \SectionAOrganSimpleUpper
   \new Staff 
%    \IntroOrganLower
    \SectionAOrganSimpleLower
  >>
  \new DrumStaff <<
   \set Staff.instrumentName = #"Drums"
   \new DrumVoice {
%    \IntroDrums
    \SectionADrumsSimple
   }
  >>
%}
 >>

% }
%   \SectionAGuitarOne
%   \SectionBGuitarOne
%   \SoloGuitarOne
%   \SoloGuitarTwo
%   \SoloGuitarThree
%   \SectionBGuitarOne
%   \SectionBGuitarOnePostSolo
%  } % Staff (Guitar)

% \new Staff {
%  \set Staff.instrumentName = #"Guitar 2" 
%  \clef "treble_8"
%  \time 8/8 
%  \key d \major
%  \tempo 4 = 100
%   \IntroGuitarTwo
%   \SectionAGuitarTwo
%   \SectionBGuitarTwo
%   \SectionBGuitarTwo
% } % Staff (Guitar)
%  \new Staff {
%   \set Staff.instrumentName = #"chords"
%   \clef "treble_8"
%   \key d \major
%%   \tempo 4 = 100
%   \DummyChordsSectionA
%   \DummyChordsSectionB
%   \SoloChordsOne
%   \SoloChordsTwo
%   \SoloChordsOne % section 3 
%   \DummyChordsSectionB
%  }
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
