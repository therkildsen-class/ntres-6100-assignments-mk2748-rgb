For my project, I wanted to explore how milk yield can be forecasted using feeding and health data from dairy cows — something that could help farmers optimize feeding schedules and monitor herd health efficiently.

The first plot you see here visualizes daily milk yield per cow across a 30-day period.
Each line represents a different cow, and you can see how milk production fluctuates over time — some cows are more consistent, while others show noticeable ups and downs.
This kind of visualization helps identify if a drop in production is cow-specific or herd-wide, which is useful for early detection of issues.

The second plot shows the relationship between feed intake and milk yield.
Each dot represents a daily record, and you can see a clear positive relationship — as feeding increases, milk yield tends to increase as well.
The black line is a linear regression fit, showing that feed intake explains a large part of the variation in milk production.
Later, health score data could be layered in to make this predictive model more robust — for example, combining feed data with health proxies to forecast yield or detect inefficiencies.

Overall, this exercise demonstrates how I can use tidyverse tools — particularly dplyr and ggplot2 — to clean, visualize, and model agricultural data, which could eventually feed into a predictive dashboard for farm management.