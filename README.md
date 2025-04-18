# Asian Meal Kit Subscription Service  
**By Jordin Huang and Hannah Lin**


[📄 View Final Project Report](./Umami Kitchen_Final Report.pdf)

## 🌟 Overview  
This project models a subscription-based meal kit service that specializes in **authentic Asian cuisine**. While most existing services cater to Western meals, this service fills a gap in the market by delivering high-quality, restaurant-style Asian dishes directly to customers' homes.

## 🥢 Key Features  
- **Authentic Recipes:** Pre-portioned ingredients and step-by-step recipes for diverse Asian dishes.  
- **Dietary Options:** Kits support vegan, gluten-free, and allergy-friendly diets.  
- **Convenient & Sustainable:** Reduces food waste and eliminates the hassle of grocery shopping and meal planning.  
- **Influencer Marketing:** Leverages influencers to promote kits through social media.  
- **Supplier Coordination:** Partners with trusted suppliers to source high-quality and rare ingredients.  

## 🗃️ Data Model Components  

### 📦 Product (Meal Kit)
- `meal_kit_id` (PK)  
- `name`  
- `type_of_cuisine`  
- `recipe`  
- `food_allergens_dietary_restrictions`  
- `serving_size`  
- `ingredients`  
- `availability` (e.g., continuous, seasonal)  
- `customer_rating`  

### 👤 Customer
- `customer_id` (PK)  
- `name`  
- `phone_number`  
- `email`  
- `delivery_address`  
- `billing_information`  
- `allergies_preferences`  
- `referral_code`  
- `subscription_plan`  
- `delivery_frequency` (weekly, biweekly, monthly)  
- `order_history`  

### 📣 Influencer
- `influencer_id` (PK)  
- `name`  
- `gender`  
- `dob`  
- `social_media_accounts`  
- `followers_count`  
- `referral_code`  
- `commission_rate`  

### 🚚 Supplier
- `supplier_id` (PK)  
- `name`  
- `product_prices`  
- `address`  
- `delivery_schedule` / `lead_time`  

### 🧾 Order
- `order_id` (PK)  
- `customer_id` (FK)  
- `order_time`  
- `delivery_date`  
- `status`  
- `tracking_info`  
- `products_purchased`  
- `quantity`  
- `product_price`  

### 💰 Financial Tracking
- `subscription_revenue`  
- `supplier_costs`  
- `influencer_commission_payouts`  
- `shipping_delivery_costs`  

## 📊 Project Goals  
- Design a comprehensive relational database schema  
- Simulate real-world business logic for operations, marketing, and customer preferences 
- Enable data analysis for optimizing operations and growth  

## ✅ Conclusion

### 📌 Project Outcomes
- Successfully designed and implemented a relational database in **MySQL** and a NoSQL structure in **MongoDB**
- Effectively migrated structured SQL data into MongoDB collections, while maintaining relationship integrity using `ObjectID` fields and references
- Connected the MySQL database to **Python** and executed queries to showcase dynamic data insights
- Queried complex relationships across tables/collections using **SQL joins** and **MongoDB `$lookup`**

### ⚠️ Shortcomings
- **MongoDB** does not enforce foreign key constraints, which can lead to **orphaned data** if referenced documents are deleted
- In **SQL**, performance issues may arise with **large joins** and **aggregate queries** over time
- Future improvements include integrating **visualization tools** like **Tableau** or **Power BI** to better present project insights

