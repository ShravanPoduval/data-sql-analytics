🎬 Movie SQL Project

A SQL database project for managing movies, actors, directors, and reviews.  
Showcases table creation, relationships, queries, triggers, stored procedures, and views.

📂 Tables
- **Movies** – Movie details: title, genre, release year, rating, avg rating  
- **Actors** – Actor info: name, gender, birth year, nationality  
- **Directors** – Director info: name, birth year, nationality  
- **MovieActors** – Many-to-many mapping of actors to movies with roles  
- **MovieDirectors** – Many-to-many mapping of directors to movies  
- **Reviews** – Movie reviews with reviewer name, rating, comment, date  

📝 Features
- **Basic queries:** SELECT, WHERE, ORDER BY, JOINs  
- **Aggregations:** COUNT, AVG, grouping by genre or actor  
- **Top-rated & recent movies:** LIMIT, ranking queries  
- **Triggers:** Auto-update `AvgRating` in Movies after a new review  
- **Stored Procedure:** Get movies by director  
- **Views:** `MovieSummary` combining movies and directors  

⚡ Example Queries
- Top 5 rated movies  
- Movies released after 2015  
- Actors in a specific movie (e.g., Titanic)  
- Movie count by genre  
- Top 3 movies per genre  
- Movies by a specific director using a procedure  

📊 Sample Data
- 20 Movies, 20 Actors, 15 Directors  
- 15 Reviews for different movies  
- Many-to-many relationships between movies-actors and movies-directors  

🔧 Notes
- MySQL used  
- Triggers update average rating automatically  
- Procedures simplify director-based queries  
- Views provide easy summary of movies and directors  
