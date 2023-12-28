select * from shopping_trends;

-- 1.What is the overall distribution of customer ages in the dataset?

select count(distinct age) from shopping_trends;
select distinct age from shopping_trends
order by age asc;

-- 2.How does the average purchase amount vary across different product categories?

select * from shopping_trends;

select category,avg(`Purchase Amount (USD)`) as average_amount
from shopping_trends
group by category;


-- 3.Which gender has the highest number of purchases?

select * from shopping_trends;

select gender,count(`Item Purchased`) as amount
from shopping_trends
group by gender;

-- 4. What are the most commonly purchased items in each category?

select * from shopping_trends;

select `Item Purchased`,count(`Item Purchased`) as ct 
from shopping_trends
group by `Item Purchased`
order by ct desc;

-- 5.Are there any specific seasons or months where customer spending is significantly higher?

select * from shopping_trends;

select Season,count(Season) as ct
from shopping_trends
group by Season
order by ct desc;

-- 6. What is the average rating given by customers for each product category?

select * from shopping_trends;

select Category,avg(`Review Rating`) as Rating
from shopping_trends
group by Category
order by Rating desc;

-- 7. Are there any notable differences in purchase behavior between subscribed and non-subscribed customers?

select * from shopping_trends;

select `Subscription Status`,sum(`Purchase Amount (USD)`) as Amount
from shopping_trends
group by `Subscription Status`
order by Amount desc;

-- 8. Which payment method is the most popular among customers?

select * from shopping_trends;

select `payment Method`,count(`payment Method`) as payment_Method
from shopping_trends
group by `payment Method`
order by Payment_Method;


-- 9. Do customers who use promo codes tend to spend more than those who don't?

select * from shopping_trends;

select `Promo Code Used`,sum(`Purchase Amount (USD)`) as Amount,gender
from shopping_trends
group by `Promo Code Used`,gender;


-- 10.How does the frequency of purchases vary across different age groups?

select * from shopping_trends;
select distinct age
from shopping_trends
order by age asc;

select 
case when age <= 25 and age >15 then "Young Adults"
when age < 50 and age >25 then 'Middle-Aged Adults'
when age >= 50 then 'old' end as Age_category,sum(`Purchase Amount (USD)`) as Amount
from shopping_trends
group by Age_category;

-- 11. Are there any correlations between the size of the product and the purchase amount?

select * from shopping_trends;

select Size,sum(`Purchase Amount (USD)`) as Amount
from shopping_trends
group by Size
order by Amount desc;


-- 12 . Which shipping type is preferred by customers for different product categories?

select * from shopping_trends;

select Category,`Shipping Type`,count(`Shipping Type`) as cnt
from shopping_trends
group by Category,`Shipping Type`
order by Category;


-- 13 How does the presence of a discount affect the purchase decision of customers?

select * from shopping_trends;

select `Discount Applied`,sum(`Purchase Amount (USD)`) as Amount
from shopping_trends
group by `Discount Applied`;


-- 14 Are there any specific colors that are more popular among customers?

select * from shopping_trends;

select distinct color,count(color) as popular
from shopping_trends
group by color
order by popular desc
limit 5;


-- 15 What is the average number of previous purchases made by customers?

select * from shopping_trends;

select avg(`Previous Purchases`) as Previous_Purchases
from shopping_trends;


-- 16 How does the purchase amount differ based on the review ratings given by customers?
select * from shopping_trends;


-- 17 Are there any noticeable differences in purchase behavior between different locations?

select distinct location,sum(`Purchase Amount (USD)`) as Amount
from shopping_trends
group by location
order by Amount desc;


-- 18 Is there a relationship between customer age and the category of products they purchase?

select * from shopping_trends;

select distinct category, avg(age) as age
from shopping_trends
group by Category;


-- 19 How does the average purchase amount differ between male and female customers?

select * from shopping_trends;

select distinct gender,sum(`Purchase Amount (USD)`) as Amount
from shopping_trends
group by Gender;