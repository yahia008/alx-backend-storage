-- Provides a list of all bands whose primary style is Glam rock, sorted by their longevity.
-- Retrieve the band's name and calculate its lifespan by subtracting the formation year from the current year,
-- if the "split" information is unavailable; otherwise, utilize the value from the "split" column.
SELECT band_name, (IFNULL(split, '2020') - formed) AS lifespan
    FROM metal_bands
    WHERE FIND_IN_SET('Glam rock', IFNULL(style, "")) > 0
    ORDER BY lifespan DESC;
