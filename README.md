# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
In MechaCar_MPG.csv dataset has mpg test results for 50 protptype MechaCars. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. We will design a mutiple linear regression model to predicts the MPG by using several variales in metrics

In the summary of mutiple linear regression following question can be answered:

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  
      Vehicle length and Ground variables/coeffeicients provided significant contribution to the linear model, 
      which mean they provided a non-random amount of variance to the MPG in dataset.
* Is the slope of the linear model considered to be zero? Why or why not?

      From the summary, the p-value is 5.35e-11, its smaller than significant level 0.05, thus we reject the null hypothesis 
      that slope equal to 0, also there are some independent variable/coeffeicients had significant effect on MPG. As 
      conlcusion the slop of the linear model not considered to be 0.
* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

      The R-squared value is 0.72, the range of the value is 0-1. This tells how well the future prediction data point fit in 
      the linear model, Its about 72% of predictions is correct out of 100 times. So this linear model predict MPG 
      effectively.

## Summary Statistics on Suspension Coils
In Suspension_Coil.csv dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. We using R to create a summary statistics table to show:

1. The suspension coil’s PSI continuous variable across all manufacturing lots

2. The following PSI metrics for each lot: mean, median, variance, and standard deviation.

![total_summary]() ![lot_summary]()

From the dataframes summary, the following question can be adddressed:
* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

      The current manufacturing data, for all manufacturing lots in total has the variance of 62.29 pounds per square inch, 
      which overall meet the design specification that not exceed 100 pounds/square inch. Look closely, each lot individual 
      variance are Lot1: 0.98, Lot2: 7.47, Lot3: 170.29; Lot1 and 2 both meet the design specification, but Lot3 has exceed 
      the specification about 70 pound/square inch, which make Lot3 not meet the design specification.

## T-Tests on Suspension Coils
We will perform t-tests on Suspension_Coil.csv dataset to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch. Which null hypothesis is population mean equall to 1500 pounds per square inch, and alternative hypothesis is population mean not equall to 1500 pounds per square inch.

![all-lot-t-test]()

The T-test for overall lot, from the summary we see the P-value is around 0.06 its greater than the significant level 0.05, which conclude fail to reject the null hypothesis, that means the population mean is no statistical difference to 1500 pounds per square inch.

![Lot1-t-test]()

The T-test for lot 1, from the summary we see the P-value is around 1 its greater than the significant level 0.05, which conclude fail to reject the null hypothesis, that means the sample mean is no statistical difference to 1500 pounds per square inch. Also the mean of Plot1 itself is 1500.

![Lot2-t-test]()

The T-test for lot 2, from the summary we see the P-value is around 0.61 its greater than the significant level 0.05, which conclude fail to reject the null hypothesis, that means the sample mean is no statistical difference to 1500 pounds per square inch.

![Lot3-t-test]()

The T-test for lot 3, from the summary we see the P-value is around 0.04 its smaller than the significant level 0.05, which conclude reject the null hypothesis, that means the sample mean is a statistical difference to 1500 pounds per square inch.

## Study Design: MechaCar vs Competition
The statistical study descripte and quantify how the MechaCar performs against the competition from other manufacturers, Make a study design that critically think about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating. In order to do this I want to address the following questions:

* What metric or metrics are you going to test?
        
      The metric of price of car, maintenance cost and safety rating are the most consumer care about, 
* What is the null hypothesis or alternative hypothesis?

      Null Hypothesis: Is all the cars' price and maintenance cost coefficients correlation to safety rating from each classes of car.

      Alternative Hypothesis: Is all the cars' price and maintenance cost not coefficients correlation to safety rating from each classes of car.
* What statistical test would you use to test the hypothesis? And why?

       We would use Multiple Linear Regression test to test the hypothesis, since there are 2 numeric independent variables and a numeric dependent variable and we want to test 
       how independent variables combination affected the dependent variable.
* What data is needed to run the statistical test?

      The dataset we needed to run the statistical test are the sample size are large enough for each classes of car must have same amount of sample, price and maintenance cost 
      must be continous numeric as independent variables, safety rating must be continous numeric as dependent variable as well. 
