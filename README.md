# Reproducible research: version control and R

Link to Q1, 2 and 3: https://github.com/Ox1065668/logistic_growth/tree/main
   
## **4) (**30 points**) Sometimes we are interested in modelling a process that involves randomness. A good example is Brownian motion. We will explore how to simulate a random process in a way that it is reproducible:**

   **a) A script for simulating a random_walk is provided in the `question-4-code` folder of this repo. Execute the code to produce the paths of two random walks. What do you observe? (10 points) \**

The script produces a plot of two simulated random walks over time. Both start at the origin (0,0) but follow a unique trajectory of 500 steps - this is due to the use of the function 'random_walk', which independently generates each step of a walk. Whilst each step has a set distance of 0.25 units, the angle of each step is randomly generated, taking a value between 0 and 2 pi for each of the 500 iterations. The gradient of each graph indicates time progression over the course of the walk. Because of how each walk is randomly generated, each re-run will produce a distinct set of steps, and therefore coordinates. 

   **b) Investigate the term **random seeds**. What is a random seed and how does it work? (5 points) \**

Random seeds are numbers/vectors that set an initial value for simulations from a pseudo-random number generator (PRNG) - it allows reproducibility of results in the sense that whenever the same seed is used, the same sequence will be obtained. The generation of numbers using random seeds occurs via an algorithm, which is perceived to be random, hence 'pseudo-random'. In this case, the use of a random seed ensures replicability and reproducibility of random processes, such as Brownian motion.
   
**   c) Edit the script to make a reproducible simulation of Brownian motion. Commit the file and push it to your forked `reproducible-research_homework` repo. (10 points) \**

I edited my script by adding the 'set.seed()' function in order to give a reproducible simulation of Brownian motion, comitting the file and pushing it to my forked reproducible-research-homework repo. 
   
   d) Go to your commit history and click on the latest commit. Show the edit you made to the code in the comparison view (add this image to the **README.md** of the fork). (5 points) 

5) (**30 points**) In 2014, Cui, Schlub and Holmes published an article in the *Journal of Virology* (doi: https://doi.org/10.1128/jvi.00362-14) showing that the size of viral particles, more specifically their volume, could be predicted from their genome size (length). They found that this relationship can be modelled using an allometric equation of the form **$`V = \alpha L^{\beta}`$**, where $`V`$ is the virion volume in nm<sup>3</sup> and $`L`$ is the genome length in nucleotides.

   a) Import the data for double-stranded DNA (dsDNA) viruses taken from the Supplementary Materials of the original paper into Posit Cloud (the csv file is in the `question-5-data` folder). How many rows and columns does the table have? (3 points)\
   b) What transformation can you use to fit a linear model to the data? Apply the transformation. (3 points) \
   c) Find the exponent ($\beta$) and scaling factor ($\alpha$) of the allometric law for dsDNA viruses and write the p-values from the model you obtained, are they statistically significant? Compare the values you found to those shown in **Table 2** of the paper, did you find the same values? (10 points) \
   d) Write the code to reproduce the figure shown below. (10 points) 

  <p align="center">
     <img src="https://github.com/josegabrielnb/reproducible-research_homework/blob/main/question-5-data/allometric_scaling.png" width="600" height="500">
  </p>

  e) What is the estimated volume of a 300 kb dsDNA virus? (4 points) 
