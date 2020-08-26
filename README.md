### UBC DSCI 100 Introduction to Data Science project
# Pulsar Star KNN Classification

Pulsars belong to a family of objects called neutron stars. These are basically “dead” stars – what results when a star more massive than the sun runs out of fuel and collapses on itself. Neutron stars are typically 20-24 km., but can contain twice the mass of the sun [1]. A characteristic property of pulsars are their periodic bursts of emissions produced by their beams of light.

To help properly classify a data sample as either a pulsar or noise (i.e. man-made frequencies), scientists use two “profiles”. The first profile, the integrated profile, is created by stacking the individual bursts of emission from a pulsar. Pulses arrive at different times across different radio frequencies, and to account for this scientists use the DM-SNR (“dispersion-measure-signal-to-noise-ratio”) curve, which constitutes the second “profile.”

Our dataset [2] contains eight columns, with each column representing a numerical characteristic of the pulsar candidates. Each variable appears once for the integrated pulse profile, and once for the DM-SNR curve. The variables are:

Mean
Standard deviation
Kurtosis – (how heavily the tails of a distribution differ from the tails of a normal distribution)
Skewness – (the asymmetry in a normal distribution)

In this project, we have created a classification model to answer the following question: 
#### Given the mean, standard deviation, kurtosis, and skewness of both the integrated profile and the DM-SNR curve of a sample of radio-wave radiation, is the source of the radiation a pulsar or noise?

The Project Proposal contains a preliminary data analysis, proposed methods, and a discussion on expected outcomes. The Final Project contains the full process of training the model and displaying, visualizing the results, as well as a discussion of significance.

[1] "What are Pulsars?" Space.com

[2] "Predicting a Pulsar Star" Kaggle https://www.kaggle.com/pavanraj159/predicting-a-pulsar-star
