# IMDB Movie Rating Analysis

### Project Overview

This data analysis projects aims to identify trends and connections between the highest rated films on IMDB. This is one of the first projects I completed solo without any guide.


### Data Sources

The dats souces I used is "movie_dataset.csv". The original can be found on Kaggle, titled "IMDB Tope Rated Movies Dataset" by Shubham Maindola. Due to its usability rating of 10, I trust its validity.

The dataset columns include:
- ID (ID of the movie)
- title (Name of the movie in English)
- release_date (Date the movie was released)
- genres (Genres of the movie)
- overview (Basic overview of the movie)
- popularity (The popularity rating for the movie)
- vote_count (Number of votes/rating for the movie)
- vote_average (average rating of the movei)

- Link to dataset: https://www.kaggle.com/datasets/shubhammaindola/tmdb-top-rated-movies-dataset


### Tools
- SQL Server - Data Cleaning and Analysis
- Tableau - Data Visualization


### Data Cleaning

- Started by identifying and deleting duplicate rows


### Data Analysis

1. Find the top 10 films based on vote score alone
2. Find the top 10 films based on popularity
3. Find the movies with the most vote count
4. Find which language has the movst movies
5. The amount of movies made each year
6. Getting the count of movies in each genre, as well as the average vote for the genre
   - This was the most complex, as I had to create separate queries for each genre type and also get the average vote count for each genre.


### Analysis Findings / Data Visualization

1. Top Movies on Score: The Shawshank Redemption, The Godfather (Part I and II), Schindler's List, and Spiritied Away
2. Top Movies on Popularity: Godzilla x Kong, No Way Up, Rebel Moon - Part II, Dune: Part Two, and Kung Fu Panda 4
3. Movies with Most votes: Inception, Interstellar, The Dark Knight, Avatar, and The Avengers
4. Most popular language: English with 7,443 followed by French with 591
5. Movies made per year had an upward trend, and went down in 2020 (Most likely due to Covid stopping production on almost all films). 2018 had the most filsm made, with 398.
6. The most popular film genre has been Drama, with 4157 movies including it in their genre types.

My findings are displayed here on Tableau: https://public.tableau.com/app/profile/austin.witkowski/viz/IMDBMovieRatings_17164961283680/Dashboard1


### Limitations

It should be know that this dataset is comprised of films that are ranked highest on IMDB. Films that weren't as popular or critcally acclaimed were not counted. It should also be know that films released more recently are the ones with the most votes and popularity. This means that average score counts for newer films have more people involved and effect the average score. Older films are seen less and are reviewed even more less.
