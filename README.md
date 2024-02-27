# TimeSeries2Audio
R script for normalizing time series data into sound with R and Audacity, because why not.

## Overview
This project converts time series data into audio signals. By normalizing the data between -1 and 1 (to fit the decibel range), we export the result to a CSV file. This file is then imported into Audacity, which undergoes further manipulation, including tempo adjustments, treble and bass boost, and noise removal, to produce a unique sound output.

### Prerequisites
- R (for data processing)
- Audacity (for audio manipulation)
- A basic understanding of time series data and audio processing

### Installation
1. **R:** Download and install R from [CRAN](https://cran.r-project.org/).
2. **Audacity:** Download and install Audacity from [the official website](https://www.audacityteam.org/download/).

### Processing Steps
1. **Run Normalization in R:** Adjust and run the script as needed. The script reads your data, normalizes it between -1 and 1, applies a smoothing function, and exports the processed data to a new CSV file.
2. **Audacity:** Select Import -> Raw Data -> Adjust import settings as needed. Note: Different import options may produce varying audio characteristics. See below for example import settings.
3. Adjust the import rate and tempo based on your preferences. This project used an import rate of 8000 and a tempo of 45 bpm.
Apply treble and bass boost, and perform noise removal as necessary.

#### Example Import Settings

![](/2024-02-27 18_11_44-Audacity.jpg)

### Contributing
Feel free to fork this project and contribute. All contributions are welcome, whether it's adding new features, improving the documentation, or reporting issues.

### Acknowledgments
Tips for adjusting import rates and audio effects in Audacity are based on personal experimentation. Be cautious with volume levels during playback to avoid discomfort.
