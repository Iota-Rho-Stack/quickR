quickR Configuration:
To install quickR, set the working directory to the installation folder and run...

source("quickR_setup.R")

from the console.

Once installed, you will need to manually download your Kaggle API Tokken to place in the ~/.kaggle directory. The quickest way to find that folder is to call cd ~/.kaggle from the R project directory. Once in place, run chmod 600 ~/.kaggle/kaggle.json to ensure the file is only readable via the Kaggle API. Consult the Kaggle API repository for further details.(https://github.com/Kaggle/kaggle-api)

To uninstall quickR, set the working directory to the installation folder and run...

source("quickR_remove.R")

from the console.

Note: This will still leave miniconda and the r-reticulate environment intact.

** All commands operable as of 4-7-2020 **
