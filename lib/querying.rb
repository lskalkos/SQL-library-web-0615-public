def select_books_titles_and_years_in_first_series_order_by_year
  <<-SQL
    SELECT title, year
    FROM books
    WHERE series_id = 1
    ORDER BY books.year ASC;
  SQL
end

def select_name_and_motto_of_char_with_longest_motto
  <<-SQL
    SELECT name, motto
    FROM characters
    ORDER BY length(motto) DESC LIMIT 1;
  SQL
end

def select_value_and_count_of_most_prolific_species
  <<-SQL
    SELECT characters.species, count(characters.species)
    FROM characters INNER JOIN series ON characters.series_id = series.id
    GROUP BY characters.species
    ORDER BY count(characters.species) DESC LIMIT 1;
  SQL
end

def select_name_and_series_subgenres_of_authors
  <<-SQL
    SELECT authors.name, subgenres.name
    FROM authors
    INNER JOIN series ON series.author_id = authors.id
    INNER JOIN subgenres ON series.subgenre_id = subgenres.id;
  SQL
end

def select_series_title_with_most_human_characters
  <<-SQL
    SELECT series.title
    FROM series
    INNER JOIN characters ON characters.series_id = series.id
    WHERE characters.species = 'human'
    GROUP BY series.id
    ORDER BY count(characters.species) DESC LIMIT 1;
  SQL
end

def select_character_names_and_number_of_books_they_are_in
  <<-SQL
    SELECT characters.name, count(characters.id)
    FROM characters
    INNER JOIN character_books ON characters.id = character_books.character_id
    INNER JOIN books ON books.id = character_books.book_id
    GROUP BY characters.name
    ORDER BY count(characters.id) DESC;
  SQL
end
