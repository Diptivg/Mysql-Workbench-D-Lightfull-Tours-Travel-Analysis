# Title - D’Lightful Tours & Travels Analysis  
**Turning Destinations into Delightful Memories**  

> Not Important but still putting out My D’Lightful Tours & Travels Hypothetical Company Name Made
> 
> The name **D’Lightful** is inspired by my name *Dipti* —  
> **“D”** from *Dipti* and **“Light”** from its meaning, symbolizing brightness and joy.  
> **“Full”** represents completeness and happiness, together forming *D’Lightful*,  
> a name that reflects **joy, positivity, and memorable travel experiences.**

---

##  Project Overview  
This project presents a **MySQL-based data analysis** for *D’Lightful Tours & Travels*, a travel and tourism company.  
It aims to explore **customer behavior, destination popularity, booking patterns, revenue generation, and satisfaction insights** through structured SQL queries and relational data design.

---

##  Tech Stack  
- **Database:** MySQL Workbench  
- **Language:** SQL  
- **Concepts Used:** Joins, Aggregations, Grouping, Constraints, Relationships  

---

##  Data Source  
The dataset is **custom-created** to simulate a real-world travel booking system.  
It contains **6 relational tables** connected through primary and foreign keys.

| Table Name | Description | Key Columns |
|-------------|--------------|--------------|
| `Customers` | Customer details with registration info | `customer_id`, `name`, `city`, `registration_date` |
| `Destinations` | Domestic & international travel spots | `destination_id`, `destination_name`, `country`, `category`, `average_cost`, `popularity_rating` |
| `Tour_Packages` | Tour offerings linked to destinations | `package_id`, `package_name`, `destination_id`, `duration_days`, `price` |
| `Bookings` | Tracks all tour bookings | `booking_id`, `customer_id`, `package_id`, `booking_date`, `status` |
| `Payments` | Payment transactions for bookings | `payment_id`, `booking_id`, `amount`, `payment_mode`, `payment_status` |
| `Reviews` | Customer feedback and ratings | `review_id`, `customer_id`, `package_id`, `rating`, `review_comment` |

---

##  Features & Highlights  

###  Revenue Analysis  
- Total and monthly revenue trends  
- Top-earning destinations and categories  

###  Customer Insights  
- Top customers by total spending  
- Average ratings and feedback patterns  

###  Destination Trends  
- Domestic vs. international travel preferences  
- Most booked and highest-rated destinations  

###  Payment Analysis  
- Revenue contribution by payment mode (UPI, Credit Card, etc.)  
- Transaction volume and average spend per mode  

###  Customer Satisfaction  
- Average rating by destination and category  
- Satisfaction levels: Excellent, Good, Average, Poor  

###  Booking Insights  
- Monthly booking trends and completion status  
- Distribution of bookings across travel types  

---

##  How to Run the Project  

1. Open **MySQL Workbench** on your computer.  
2. Open the file **`D'Lightful Tours & Travels Analysis.sql`**.  
3. Click **Run** to create the database and tables.  
4. Expand the database **DLightful_Tours** to view the data.  
5. Run the analysis queries at the bottom of the file to see results like revenue, top destinations, and customer ratings.

---

##  Project Type  
`MySQL Workbench | Data Analysis | Tourism Analytics | SQL`  

⭐ If you found this project insightful, consider giving it a star on GitHub! 🌟
