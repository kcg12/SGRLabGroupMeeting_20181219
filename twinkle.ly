\version "2.18.2"

#(ly:set-option 'midi-extension "midi")
%#(set-global-staff-size 18)

% Disable hyperlinks in the PDF output.
\pointAndClickOff

\header {
  title = "Twinkle, Twinkle Little Star"
  copyright = "None"
} %

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
}

the_melody = \relative c' {c4 c g' g a a g2 
f4 f e e d d c2
g'4 g f f e e d2
g4 g f f e e d2 
c4 c g' g a a g2 
f4 f e e d d c2
}

the_words = \lyricmode {
Twin -- kle, twin -- kle lit -- tle star,
How I won -- der what you are.
Up a -- bove the world so high,
Like a dia -- mond in the sky.
Twin -- kle, twin -- kle lit -- tle star,
How I won -- der what you are.
}


    
\paper {#(set-paper-size "letter")
    top-margin = 1.0\in
    right-margin = 0.75\in
    bottom-margin = 0.5\in
    left-margin = 0.75\in
    }
    
        \score {
        \new Staff <<
            \global
            \clef treble
            \new Voice = "melody" \the_melody
            \new Lyrics \lyricsto melody \the_words
            >>
             }