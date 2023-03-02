# Mechacar Analysis

## Purpose

In order to keep up with production and manufacturing of the new mechacar, our upper management asked us to analyze the manufacturing outputs of the 3 manufacturing lots. In order to do so, we used R to get the summary statistics of the data.


## Results

### Linear Regression to Predict MPG

In our data, we had 3 variables that provided a non-random amount of variance. They were the vehicle length and ground clearance. The intercept also has a non-random amount of variance, indicating that there is a factor beyond the data we have that is impacting it. 

The slope of the linear regression is not zero, as this is a multiple linear regression model, they would all have to have a slope of zero for the model to have a slope of zero. 

The linear model is overfit for the data, so while it might be good at predicting the MPG, which it will only be accurate about 70% of the time, it will not be useful with other data sets.

![mpg_lm_model_with_residuals](https://user-images.githubusercontent.com/116474586/222333386-abd906a4-bad2-451f-a753-a3ac32c14a3b.png)


## Summary Statistics on Suspension Coils

While all the manufacturing lots collectively meet the variance requirements, when the lots are broken out it is clear that 1 of the lots has an issue meeting that standard. Lot 3 has a variance of over 170, which is not within the standar
ds. Lot 1 and 2 are both within the standards with a variance o9f 0.97 and 7.47 respectively.

![summary_statistics_by_lot](https://user-images.githubusercontent.com/116474586/222334795-64f873af-1fb8-4849-ada9-38f27b3317e5.png)
![summary_statistics](https://user-images.githubusercontent.com/116474586/222334814-ece6a113-e121-4cdf-bb91-479198a3cce9.png)


## T-Test on Suspension Coils

Looking at the p values of the t tests for all the lots, only lot 3's mean is statisticallt significantly different than our mean of all the manufacturing lots. With a P value of .041, it is within the .05 threshold for P values to be statistically different. With P values of 1 and .607 for lots 1 and 2 respectively, their means are similar to the overall mean of the manufacturing lots.

![Lot_1_ttest](https://user-images.githubusercontent.com/116474586/222335155-c613dcf6-311f-4c2d-a3be-0a1d6d84d396.png)
![Lot_2_ttest](https://user-images.githubusercontent.com/116474586/222335161-1504440e-fa81-49af-8dd4-ac609530dedd.png)
![Lot_3_ttest](https://user-images.githubusercontent.com/116474586/222335162-85a531ee-a87f-4d69-931b-4e03b3b0acb4.png)


## Study Design: MechaCar vs Competition

In order to truly test the boundaries and the possibilities of the MechaCar, we would need to test several functions against the competition. A MechaCar to me means best in all categories, but the ones I would focus on the most would be the safety rating, the cost, and the top speed.

If it truly is a MechaCar, we would expect to see higher than average safety ratings, lower cost to buy the car, and a higher top speed that the competition. This would be our alternate hypothesis. If it does not out preform the sompetition, we would see average or below average safety ratings, higher cost to buy, and a top speed that is not notable. 

As far as tests I would preform to see how the MechaCar shapes up, for the cost I would look at the summary statistics of the various car manufacturers, including the min, the max, the mean, the median, and the variance. That would give us a good idea of where the cost of the MechaCar falls among the competition. For the safety ratings, I would preform a t-test where the sample population is the MechaCar's safety test results, and compare that against the safety tests of the other cars on the market. I would also preform t-tests for the most popular cars on the market that compare to the MechaCar, and make sure that it is at or above the preformance of the competition's cars. Lastly, for top speed, I would plot the top speed of the competetors' cars against the MechaCar to see how they stack up against each other.

In order to preform the testing, I would need the top speed of the cars, the cost of the cars, as well as all the safety test results each time the car was tested.
