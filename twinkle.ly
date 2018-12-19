\version "2.18.2"

#(ly:set-option 'midi-extension "midi")
%#(set-global-staff-size 18)

% Disable hyperlinks in the PDF output.
\pointAndClickOff

\header {
  title = "Twinkle, Twinkle Little Star"
    tagline = \markup {
  "MUSIC:" \italic "Ah! vous dirai-je, maman." "(1740)"
  "  LYRICS: Jane Taylor:" \italic "The Star" "from" \italic "Rhymes for the Nursery"}
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

verse_one = \lyricmode { \set stanza = #"1. "
Twin -- kle, twin -- kle lit -- tle star,
How I won -- der what you are.
Up a -- bove the world so high,
Like a dia -- mond in the sky.
Twin -- kle, twin -- kle lit -- tle star,
How I won -- der what you are.
}

verse_two = \lyricmode { \set stanza = #"2. "
When this blaz -- ing sun is gone,
When he noth -- ing shines up -- on,
Then you show your lit -- tle light,
Twin -- kle, twin -- kle, through the night.
When this blaz -- ing sun is gone,
When he noth -- ing shines up -- on.
}

verse_three = \lyricmode { \set stanza = #"3. "
Then the travel -- ler in the dark
Thanks you for your tin -- y spark;
He could not see where to go,
If you did not twin -- kle so.
Then the travel -- ler in the dark
Thanks you for your tin -- y spark.
}

verse_four = \lyricmode { \set stanza = #"4. "
In the dark blue sky you keep,_And 
oft -- en through my cur -- tains peep,
For you nev -- er shut your eye
Till the sun is in the sky.
In the dark blue sky you keep,_And
oft -- en through my cur -- tains peep,
}

verse_five = \lyricmode { \set stanza = #"5. "
As your bright and tin -- y spark
Lights the travel -- ler in the dark,
Though I know not what you are,
Twin -- kle, twin -- kle, lit -- tle star.
Though I know not what you are,
Twin -- kle, twin -- kle, lit -- tle star.
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
            \new Lyrics \lyricsto melody \verse_one
            \new Lyrics \lyricsto melody \verse_two
            \new Lyrics \lyricsto melody \verse_three
            \new Lyrics \lyricsto melody \verse_four
            \new Lyrics \lyricsto melody \verse_five
            >>
             }