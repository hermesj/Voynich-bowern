# VoynichStats

This is an extension of Lindemann and Bowers' code project (see below) for comparing the text Voynich manuscript to other historical texts, taking into account different textual features. 

The creation of a corpus with encrypted texts was added, the encryption method is the Polygraphia III method developed by Johannes Trithemius (1506).  

In addition, the counting of word lengths, of word twins and of minimum pairs was added. The results were presented at the International Conference on the Voynich Manuscript on 30 November 2023. The paper explaining these methods can be found here: Polygraphia III: The cipher that pretends to be an
artificial language - https://ceur-ws.org/Vol-3313/paper7.pdf

The Video with my conference talk can be found here: https://youtu.be/DsGjkGvaOsc

If you want to re-create the corpora needed you have to run the R scripts 1, 2 and 7 from the R code folder. 
R script 9 performs the experiments of my paper.


## Original README from the base project
Corpus materials to accompany Character Entropy in Modern and Historical Texts: Comparison Metrics for an Undeciphered Manuscript (Lindemann &amp; Bowern). The full paper is available here: https://lingbuzz.net/lingbuzz/005522 or https://arxiv.org/abs/2010.14697

The cleaned corpus files and statistic summaries are in the Corpus folder.

The Python code folder contains code for processing Wikipedia bzip2 files. 

The R code folder contains code for processing and cleaning the corpora texts. Due to size limitations, it does not contain the raw Wikipedia texts or the processed texts themselves. 

Abstract for the paper:
This paper outlines the creation of three corpora for multilingual comparison and analysis of the Voynich manuscript: a corpus of Voynich texts partitioned by Currier language, scribal hand, and transcription system, a corpus of 294 language samples compiled from Wikipedia, and a corpus of eighteen transcribed historical texts in eight languages. These corpora will be utilized in subsequent work by the Voynich Working Group at Yale University. We demonstrate the utility of these corpora for studying characteristics of the Voynich script and language, with an analysis of conditional character entropy in Voynichese. We discuss the interaction between character entropy and language, script size and type, glyph compositionality, scribal conventions and abbreviations, positional character variants, and bigram frequency. This analysis characterizes the interaction between script compositionality, character size, and predictability. We show that substantial manipulations of glyph composition are not sufficient to align conditional entropy levels with natural languages. The unusually predictable nature of the Voynichese script is not attributable to a particular script or transcription system, underlying language, or substitution cipher. Voynichese is distinct from every comparison text in our corpora because character placement is highly constrained within the word, and this may indicate the loss of phonemic distinctions from the underlying language.
