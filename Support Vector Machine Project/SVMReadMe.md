
# Support Vector Machine (SVM)

This assignment focuses on constructing a Support Vector Machine using standard software SVMLIB and SciKit Learn SVM. You can choose to implement it in either Matlab or Python. If you opt for Matlab, please refer to the instructions provided in the accompanying video.

## Task 1: Graphical Representation of SVM for Classification

### a) Generating 2D Samples in Gaussian Clusters
- Write a script that generates 2D samples in four Gaussian clusters centered around the points (1,1), (2,1.5), (2,1), (3,1.5) with a variance of 0.04. Each cluster will contain 10 data points.
- Label the samples of the first two clusters with label 1 and the remaining two clusters with label -1.
### b) Training a Linear SVM
- Train a linear SVM using the generated samples.
### c) Extracting Parameters and Graphical Representation
- Extract the values of the Lagrange multipliers and the bias from the SVM function or object.
- Using the Lagrange Multipliers, compute the primal parameters.
- Represent graphically the separating line and the training data. Use different markers for the support vectors. Differentiate classes with distinct colors.
### d) Representing the Margin
- Verify that the support vectors lie inside or on the margin.


## Task 2: Graphical Representation of Risks
Graphical representation of the empirical risk , the structural risk  and the actual risk . In this section the student is required to reproduce the graphs for the three risks shown in the theoretical section by using the script below to generate a set of binary labeled data in a space of 10 dimensions, that can be classified with a linear classifier in this space. 

### a) Generating Parameter Values
- Generate a set of 20 values for the parameter 𝜆 logarithmically spaced between 0.01 and 10.
### b) Training and Testing
- For each value of 𝜆, generate a set of 100 data points, train an SVM, and test it with 1000 newly generated data points.
### c) Computing Errors
- Calculate the training error 𝜖𝑡 and the test error 𝜖𝑇.
### d) Repeating the Experiment
- Repeat the experiment 100 times for all values of 𝜆. Ensure that the data used is different in each iteration.
### e) Averaging Errors
- Average the values of both errors across the index 𝑖. These are the approximated values of the empirical and the actual risks.
- Represent graphically both risks (structural and empirical) and their difference as a function of 𝜆 using a logarithmic representation for this variable.
