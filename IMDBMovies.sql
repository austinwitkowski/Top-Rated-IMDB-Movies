select *
from [IMDB-Movies].dbo.movie_dataset

--Check to make sure all rows have unique ids and there are no duplicates

select id, count(id)
from movie_dataset
group by id
having count(id) > 1


--Delete the duplicate rows

WITH CTE AS (
  SELECT *,
         RN = ROW_NUMBER() OVER (PARTITION BY id ORDER BY id)
  FROM [IMDB-Movies].dbo.movie_dataset
)
DELETE FROM CTE
WHERE RN > 1;

----------------------------ANALYSIS----------------------------------

-- Find the top 10 rated films based on vote score average alone

Select top 10 id, title, release_date, genres, vote_average
from [IMDB-Movies].dbo.movie_dataset
order by vote_average desc


-- Find the top 10 films based on popularity

Select top 10 id, title, release_date, genres, popularity
from [IMDB-Movies].dbo.movie_dataset
order by popularity desc


-- Find the movies with the most vote count

Select top 10 id, title, genres, vote_count, vote_average
from [IMDB-Movies].dbo.movie_dataset
order by vote_count desc


--Find which language has the most movies 

SELECT top 5 original_language, COUNT(*) AS movie_count
FROM [IMDB-Movies].dbo.movie_dataset
GROUP BY original_language
ORDER BY movie_count DESC


--Get the amount of movies made each year

SELECT YEAR(release_date) AS year, COUNT(*) AS title_count
FROM [IMDB-Movies].dbo.movie_dataset
GROUP BY YEAR(release_date)
ORDER BY year desc


--Getting the count of movie in each genre, as well as the average vote for the genre

SELECT COUNT(*) AS total_action_movies, AVG(vote_average) as genre_vote, AVG(vote_count) as genre_count
FROM [IMDB-Movies].dbo.movie_dataset
WHERE genres LIKE '%Action%';

SELECT COUNT(*) AS total_comedy_movies, AVG(vote_average) as genre_vote, AVG(vote_count) as genre_count
FROM [IMDB-Movies].dbo.movie_dataset
WHERE genres LIKE '%Comedy%';

SELECT COUNT(*) AS total_drama_movies, AVG(vote_average) as genre_vote, AVG(vote_count) as genre_count
FROM [IMDB-Movies].dbo.movie_dataset
WHERE genres LIKE '%Drama%';

SELECT COUNT(*) AS total_romance_movies, AVG(vote_average) as genre_vote, AVG(vote_count) as genre_count
FROM [IMDB-Movies].dbo.movie_dataset
WHERE genres LIKE '%Romance%';

SELECT COUNT(*) AS total_crime_movies, AVG(vote_average) as genre_vote, AVG(vote_count) as genre_count
FROM [IMDB-Movies].dbo.movie_dataset
WHERE genres LIKE '%Crime%';

SELECT COUNT(*) AS total_thriller_movies, AVG(vote_average) as genre_vote, AVG(vote_count) as genre_count
FROM [IMDB-Movies].dbo.movie_dataset
WHERE genres LIKE '%Thriller%';

SELECT COUNT(*) AS total_fantasy_movies, AVG(vote_average) as genre_vote, AVG(vote_count) as genre_count
FROM [IMDB-Movies].dbo.movie_dataset
WHERE genres LIKE '%Fantasy%';

SELECT COUNT(*) AS total_animation_movies, AVG(vote_average) as genre_vote, AVG(vote_count) as genre_count
FROM [IMDB-Movies].dbo.movie_dataset
WHERE genres LIKE '%Animation%';

SELECT COUNT(*) AS total_adventure_movies, AVG(vote_average) as genre_vote, AVG(vote_count) as genre_count
FROM [IMDB-Movies].dbo.movie_dataset
WHERE genres LIKE '%Adventure%';

SELECT COUNT(*) AS total_western_movies, AVG(vote_average) as genre_vote, AVG(vote_count) as genre_count
FROM [IMDB-Movies].dbo.movie_dataset
WHERE genres LIKE '%Western%';

SELECT COUNT(*) AS total_war_movies, AVG(vote_average) as genre_vote, AVG(vote_count) as genre_count
FROM [IMDB-Movies].dbo.movie_dataset
WHERE genres LIKE '%War%';

SELECT COUNT(*) AS total_horror_movies, AVG(vote_average) as genre_vote, AVG(vote_count) as genre_count
FROM [IMDB-Movies].dbo.movie_dataset
WHERE genres LIKE '%Horror%';

SELECT COUNT(*) AS total_scifi_movies, AVG(vote_average) as genre_vote, AVG(vote_count) as genre_count
FROM [IMDB-Movies].dbo.movie_dataset
WHERE genres LIKE '%Science Fiction%';

SELECT COUNT(*) AS total_family_movies, AVG(vote_average) as genre_vote, AVG(vote_count) as genre_count
FROM [IMDB-Movies].dbo.movie_dataset
WHERE genres LIKE '%Family%';

SELECT COUNT(*) AS total_music_movies, AVG(vote_average) as genre_vote, AVG(vote_count) as genre_count
FROM [IMDB-Movies].dbo.movie_dataset
WHERE genres LIKE '%Music%';

SELECT COUNT(*) AS total_mystery_movies, AVG(vote_average) as genre_vote, AVG(vote_count) as genre_count
FROM [IMDB-Movies].dbo.movie_dataset
WHERE genres LIKE '%Mystery%';

SELECT COUNT(*) AS total_history_movies, AVG(vote_average) as genre_vote, AVG(vote_count) as genre_count
FROM [IMDB-Movies].dbo.movie_dataset
WHERE genres LIKE '%History%';

SELECT COUNT(*) AS total_tvmovie_movies, AVG(vote_average) as genre_vote, AVG(vote_count) as genre_count
FROM [IMDB-Movies].dbo.movie_dataset
WHERE genres LIKE '%TV Movie%';