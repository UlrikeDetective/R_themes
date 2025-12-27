install.packages("palmerpenguins")
library("palmerpenguins")
library("here")
install.packages("skimr")
library("skimr")
install.packages("janitor")
library("janitor")
install.packages("dplyr")
library("dplyr")
skim_without_charts(penguins)
glimpse(penguins)
head(pengiuns)
head(penguins)
#Pipe + Auswahl (Specie)
penguins %>% 
  select(species)
penguins %>% 
  select(-species)
#rename - umbenennen von Columns
penguins %>% 
  rename(island_new=island)
#rename alle Colums - Großschreibung Janitor-Package
rename_with(penguins, toupper)
#rename alle Colums - Kleinschreibung - Janitor-Package
rename_with(penguins, tolower)
clean_names(penguins)

library(tidyverse)
#arrage-Function
penguins %>% arrange(bill_length_mm)
penguins %>% arrange(-bill_length_mm)

#speichern neuer Dataframe
penguins2 <- penguins %>% arrange(-bill_length_mm)
view(penguins2)

#group by (drap_na for missing values) + mean or max
penguins %>% group_by(island) %>% drop_na() %>% summarize(mean_bill_length_mm = mean(bill_length_mm))

penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm))
penguins %>% group_by(species, island) %>% drop_na() %>%  summarize(max_bl = max(bill_length_mm), mean_b1 = mean(bill_length_mm))
#filter
penguins %>% filter(species == "Adelie")
penguins %>% filter(species == "Adelie") %>%  drop_na()

mean(body_mass_g)

install.packages("ggplot2")
library(ggplot2)
data(penguins2)
data(penguins)
data(palmerpenguins)
View(penguins2)

ggplot(data = penguins2) +
  geom_point(mapping = aes(x = flipper_length_mm, y =body_mass_g))

ggplot(data = penguins2) + 
  geom_col(mapping = aes(y = flipper_length_mm, x = species))

ggplot(data = penguins2) + geom_col(mapping = aes(y = flipper_length_mm, x = species))

ggplot(data = penguins2) +
  geom_point(mapping = aes(x = flipper_length_mm, y =body_mass_g, color = species))

ggplot(data = penguins2) +
  geom_point(mapping = aes(x = flipper_length_mm, y =body_mass_g, color = species, shape = species))

ggplot(data = penguins2) +
  geom_point(mapping = aes(x = flipper_length_mm, y =body_mass_g, color = species, shape = species, size = species))

ggplot(data = penguins2) +
  geom_point(mapping = aes(x = flipper_length_mm, y =body_mass_g, color = species, alpha = species))

ggplot(data = penguins2) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y =body_mass_g))

ggplot(data = penguins2) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y =body_mass_g)) +
  geom_point(mapping = aes(x = flipper_length_mm, y =body_mass_g))

ggplot(data = penguins2) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y =body_mass_g, linetype = species))

ggplot(data = penguins2) +
  geom_jitter(mapping = aes(x = flipper_length_mm, y =body_mass_g))

#bei Bar-Charts ist keine y-Achse nötig
ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=cut))

#Bar-Chart wird am Rand/Linie mit Farbe gefüllt
ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=cut, color = cut))

#Bar-Chart wird mit Farbe gefühlt
ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=cut, fill = cut))

#Stacked Bar-Chart
ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=cut, fill=clarity))

#Facet
#facet_wrap
ggplot(data = penguins2) +
  geom_point(mapping = aes(x = flipper_length_mm, y =body_mass_g, color = species))+
  facet_wrap(~species)

ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=cut, fill = cut))+
  facet_wrap(~cut)

#facet_grid
ggplot(data = penguins2) +
  geom_point(mapping = aes(x = flipper_length_mm, y =body_mass_g, color = species))+
  facet_grid(sex~species)

#labs, Titles, Subtitles, Caption
ggplot(data = penguins2) +
  geom_point(mapping = aes(x = flipper_length_mm, y =body_mass_g, color = species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of three penguins species", caption = "Data from 2007-2009")

# annotate, color fontface, size
ggplot(data = penguins2) +
  geom_point(mapping = aes(x = flipper_length_mm, y =body_mass_g, color = species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length")+
  annotate("text", x=220,y=3500, label="The Gentoos are the largest penguins", color="purple", fontface="bold", size=4.5)

#angle
ggplot(data = penguins2) +
  geom_point(mapping = aes(x = flipper_length_mm, y =body_mass_g, color = species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length")+
  annotate("text", x=220,y=3500, label="The Gentoos are the largest penguins", color="purple", fontface="bold", size=4.5, angle=25)

# varibles into code
p <- ggplot(data = penguins2) +
  geom_point(mapping = aes(x = flipper_length_mm, y =body_mass_g, color = species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length")+
  annotate("text", x=220,y=3500, label="The Gentoos are the largest penguins", color="purple", fontface="bold", size=4.5, angle=25)

p+annotate("text", x=500,y=2000, label="Adelie")

ggplot(data = penguins2) +
  geom_point(mapping = aes(x = flipper_length_mm, y =body_mass_g, color = species))+
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of three penguins species", caption = "Data from 2007-2009")

#save the last plot
ggsave("Three penguins species.png")
