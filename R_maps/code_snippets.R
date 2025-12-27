library(ggplot2)

custom_theme_black <- function() {
  #theme_minimal() %+replace%  
  theme(
    # Define the overall appearance of the plot
    plot.background = element_rect(fill = "black"),
    panel.background = element_rect(fill = "black"),
    panel.grid.major = element_line(color = "azure"),
    panel.grid.minor = element_blank(),
    
    # Define the appearance of the axes
    axis.line = element_line(color = "white"),
    axis.text = element_text(color = "white"),
    axis.title = element_text(color = "white", size = 12, face = "bold"),
    axis.ticks = element_line(color = "white"),
    
    # Define the appearance of the legend
    legend.background = element_rect(fill = "black"),
    legend.title = element_text(color = "white", size = 10, face = "bold"),
    legend.text = element_text(color = "white", size = 10),
    
    # Define the appearance of the plot title and subtitles
    plot.title = element_text(color = "white", size = 14, face = "bold"),
    plot.subtitle = element_text(color = "white", size = 12),
    
    # Define the appearance of the plot labels
    plot.caption = element_text(color = "white", size = 14),
    plot.tag = element_text(color = "white", size = 11, face = "bold"),
    
    # Remove the plot border
    panel.border = element_blank()
  )
}

custom_theme_white <- function() {
  #theme_minimal() %+replace%  
  theme(
    # Define the overall appearance of the plot
    plot.background = element_rect(fill = "white"),
    panel.background = element_rect(fill = "white"),
    panel.grid.major = element_line(color = "azure2"),
    panel.grid.minor = element_blank(),
    
    # Define the appearance of the axes
    axis.line = element_line(color = "black"),
    axis.text = element_text(color = "black"),
    axis.title = element_text(color = "black", size = 12, face = "bold"),
    axis.ticks = element_line(color = "black"),
    
    # Define the appearance of the legend
    legend.background = element_rect(fill = "white"),
    legend.title = element_text(color = "white", size = 10, face = "bold"),
    legend.text = element_text(color = "black", size = 10),
    
    # Define the appearance of the plot title and subtitles
    plot.title = element_text(color = "black", size = 14, face = "bold"),
    plot.subtitle = element_text(color = "black", size = 12),
    
    # Define the appearance of the plot labels
    plot.caption = element_text(color = "black", size = 10),
    plot.tag = element_text(color = "black", size = 11, face = "bold"),
    
    # Remove the plot border
    panel.border = element_blank()
  )
}

custom_theme_white_nolegend <- function() {
  #theme_minimal() %+replace%  
  theme(
    # Define the overall appearance of the plot
    plot.background = element_rect(fill = "white"),
    panel.background = element_rect(fill = "white"),
    panel.grid.major = element_line(color = "azure2"),
    panel.grid.minor = element_blank(),
    
    # Define the appearance of the axes
    axis.line = element_line(color = "black"),
    axis.text = element_text(color = "black"),
    axis.title = element_text(color = "black", size = 12, face = "bold"),
    axis.ticks = element_line(color = "black"),
    legend.position = "none",
    
    # Define the appearance of the plot title and subtitles
    plot.title = element_text(color = "black", size = 14, face = "bold"),
    plot.subtitle = element_text(color = "black", size = 12),
    
    # Define the appearance of the plot labels
    plot.caption = element_text(color = "black", size = 10),
    plot.tag = element_text(color = "black", size = 11, face = "bold"),
    
    # Remove the plot border
    panel.border = element_blank()
  )
}
ggplot(top_10_countries_na, aes(x = Country, y = n, fill = Country)) +
  geom_bar(stat = "identity") +
  labs(title = "Most reported layoffs in Austalia by Location HQ (counted)", subtitle = "Bar plot of country counts", fill = "Country") +
  scale_fill_manual(values = my_colors) +
  coord_flip() +
  custom_theme_white()

ggplot(top_10_countries_na, aes(x = Country, y = n, fill = Country)) +
  geom_bar(stat = "identity") +
  labs(title = "Most reported layoffs in Austalia by Location HQ (counted)", subtitle = "Bar plot of country counts", fill = "Country") +
  scale_fill_manual(values = my_colors) +
  coord_flip() +
  custom_theme_black()

install.packages("wesanderson")
library(wesanderson)
install.packages("ggsci")
library(ggsci)
install.packages("nord")
library(nord)
install.packages("iWantHue")
library(iWantHue)
install.packages("colorspace")
library(colorspace)
install.packages("ggthemes")
library(ggthemes)
install.packages("RColorBrewer")
library(RColorBrewer)
install.packages("viridisLite")
library(viridisLite)
install.packages("paletteer")
library(paletteer)

my_palette <- paletteer_c("ggthemes::Classic Blue", 30)
my_palette_Harmonic <- paletteer_c("grDevices::Harmonic", 30)
my_palette_Oslo <- paletteer_c("grDevices::Oslo", 30)
my_palette_Blue_Yellow <- paletteer_c("grDevices::Blue-Yellow", 30)
my_palette_Viridis <- paletteer_c("grDevices::Viridis", 90)
my_palette_TealGrn <- paletteer_c("grDevices::TealGrn", 30)
my_palette_ag_GrnYL <- paletteer_c("grDevices::TealGrn", 30)
my_palette_Blue2DarkRed18Steps <- paletteer_d("colorBlindness::Blue2DarkRed18Steps")
my_palette_BluetoDarkOrange_18 <- paletteer_d("dichromat::BluetoDarkOrange_18")
my_palette_light_blue_material <- paletteer_d("ggsci::light_blue_material")
my_palette_cyan_material <- paletteer_d("ggsci::cyan_material")
my_palette_nuriel_Stone <- paletteer_d("ggthemes::Nuriel_Stone")
my_palette_dynamic <- paletteer_dynamic("cartography::turquoise.pal", 20)

# Using the larger_palette_wes in scale_fill_manual
ggplot(top_10_countries_na, aes(x = Country, y = n, fill = Country)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Most reported layoffs in Australia by Location HQ (counted)",
    subtitle = "Bar plot of country counts",
    fill = "Country",
  ) +
  scale_fill_manual(values = my_palette_custom_yellow_blue) +
  coord_flip() +
  custom_theme_black_nolegend()

ggplot(country_count_desc_na, aes(x = Country, y = n, fill = Country)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Most reported layoffs in Australia by Location HQ (counted)",
    subtitle = "Bar plot of country counts",
    fill = "Country",
  ) +
  scale_fill_manual(values = my_palette_custom_all) +
  coord_flip() +
  custom_theme_black_nolegend()

# scale_fill_futurama()
# scale_fill_simpsons()
# scale_fill_viridis_d()
# scale_fill_discrete_sequential() 
# scale_fill_brewer()

install.packages("lubridate")
install.packages("maps")

{r, echo = FALSE}
#Example countries
city_count_na <- Layoffs_Tracker_without_na %>% 
  count('Location_HQ')

city_count_desc_na <- city_count_na %>% 
  arrange(desc(n))

city_count_desc_na

top_10_city_na <- head(city_count_desc_na, 10)
top_10_city_na

unique_city <- Layoffs_Tracker_without_na %>%
  distinct('Location_HQ') %>%
  summarise(Count = n()) %>%
  mutate(Message = paste("There are", Count, "unique cities in the dataset"))

print(unique_city$Message)

unique_city_list_na <- unique(Layoffs_Tracker_without_na$Location_HQ)
unique_city_list_na <- sort(unique_city_list_na)

# View the list of unique countries
print(unique_city_list_na)

install.packages("osmdata")
install.packages("sf")

library(osmdata)
library(sf)

# List of cities
cities <- c("Ahmedabad", "Amsterdam", "Ann Arbor")

# Create an empty list to store the results
coordinates <- list()

# Fetch coordinates for each city
for (city in cities) {
  query <- opq(city)
  query <- add_osm_feature(query, key = "place", value = "city")
  result <- osmdata_sf(query)
  coordinates[[city]] <- result$osm_points
}

# View the coordinates for a specific city (e.g., Ahmedabad)
view(coordinates[["Ann Arbor"]])

city_count_sf <- Layoffs_Tracker_without_na %>%
  filter(Location_HQ == 'San Francisco Bay Area') %>% 
  count(Company) %>%
  distinct(Company)

city_count_desc_sf <- city_count_sf %>% 
  arrange(desc(n))

print(city_count_sf, n = 300)

cat("\n")


unique_city_list_sf <- unique(Layoffs_Tracker_without_na$Location_HQ)
unique_city_list_sf <- sort(unique_city_list_sf)

unique_city_list_sf

# View the list of unique countries
# print(unique_city_list_na)
