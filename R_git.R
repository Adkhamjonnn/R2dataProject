library(tidyverse)
library(lubridate)
# We can classify VCS into three types:
#  Local VCS -->   it has a  Problem of collaboration
#  Centralized VCS (CVCS) --> Whenever the entire history of a project is stored in a single place, you risk losing everything
#  Distributed VCS (DVCS) -->  Every clone is really a full backup of all the data; thus, if any server dies, any of the client repositories can be copied back up to the server to restore it.


# we did some changes to the test branch and want to merge it ot the main branch
# Reinstall rlang (and optionally ggplot2/tidyverse), then restart R and re-run your code
install.packages("rlang", dependencies = TRUE)
install.packages(c("ggplot2", "tidyverse"), dependencies = TRUE)

library(tidyverse)
library(ggplot2)
iris = read_csv("https://raw.githubusercontent.com/mwaskom/seaborn-data/master/iris.csv")
ggplot(iris, aes(x = sepal_length, y = sepal_width, color = species)) +
  geom_point() + 
    theme_minimal() +
    labs(title = "Iris Dataset: Sepal Length vs Sepal Width",
         x = "Sepal Length (cm)",
         y = "Sepal Width (cm)")

