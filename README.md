# Pet-Data-Analysis
In this project I worked on the pet adoption dataset that includes the following attributes 

•	PetID - Unique hash ID of pet profile <br>
•	AdoptionSpeed - Categorical speed of adoption. Lower is faster. <br>
•	Type - Type of animal (1 = Dog, 2 = Cat)<br>
•	Name - Name of pet (Empty if not named)<br>
•	Age - Age of pet when listed, in months<br>
•	Breed1 - Primary breed of pet <br>
•	Gender - Gender of pet (1 = Male, 2 = Female, 3 = Mixed, if profile represents group of pets)<br>
•	Color1 - Color 1 of pet <br>
•	Color2 - Color 2 of pet <br>
•	MaturitySize - Size at maturity (1 = Small, 2 = Medium, 3 = Large, 4 = Extra Large, 0 = Not Specified)<br>
•	FurLength - Fur length (1 = Short, 2 = Medium, 3 = Long, 0 = Not Specified)<br>
•	Vaccinated - Pet has been vaccinated (1 = Yes, 2 = No, 3 = Not Sure)<br>
•	Dewormed - Pet has been dewormed (1 = Yes, 2 = No, 3 = Not Sure)<br>
•	Sterilized - Pet has been spayed / neutered (1 = Yes, 2 = No, 3 = Not Sure)<br>
•	Health - Health Condition (1 = Healthy, 2 = Minor Injury, 3 = Serious Injury, 0 = Not Specified)<br>
•	Quantity - Number of pets represented in profile<br>
•	Fee - Adoption fee (0 = Free)<br>
•	RescuerID - Unique hash ID of rescuer<br>
•	VideoAmt - Total uploaded videos for this pet<br>
•	PhotoAmt - Total uploaded photos for this pet<br>

I have used linear regression, as it is very flexible in terms of the number of attributes fetched to the model. 
By applying the linear regression modeling technique on the dataset, I discovered the significant attributes.
Dataset contains categorical variables, so I also used the classification algorithm. 
By creating the conditional tree consider vaccinated, sterilized and Adoption speed to predict target variable and plot the tree.
We can infer that if a pet in not vaccinated, the tree moves towards the Adoption Speed and compares if the adoption speed is less than or equal to 1.
Cats are given more weight, therefore leaf node is cat. <br>

The accuracy of the model is 63.01 %<br>

To represent the above analysis in an elegant way, I have created a dashboard through Rshiny.
