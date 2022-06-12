{{ dbt_utils.date_spine(
    datepart = 'day',
    start_date = "date(2022,06,01)",
    end_date = "date_add(current_date(), interval 1 week)"
)}}