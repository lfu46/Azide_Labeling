# import packages
library(tidyverse)

### Cell Surface 06252025
# Cell Surface 06252025 1
cell_surface_06252025_1 <- read_tsv(
  '/Volumes/Expansion/Surface_Azide_06252025/ClosedSearch_12/Eclipse_LF_Surface_Azide_1_06252025/psm.tsv',
  col_names = TRUE,
  name_repair = 'universal'
) |> 
  select(
    Modified.Peptide, Assigned.Modifications, Protein.ID
  ) |> 
  filter(
    str_detect(Assigned.Modifications, '96.0440|71.0370')
  ) |> 
  distinct()

cell_surface_06252025_1_H96 <- cell_surface_06252025_1 |> 
  filter(
    str_detect(Assigned.Modifications, '96.0440')
  )

cell_surface_06252025_1_K96 <- cell_surface_06252025_1 |> 
  filter(
    str_detect(Assigned.Modifications, '71.0370')
  )

# Cell Surface 06252025 2
cell_surface_06252025_2 <- read_tsv(
  '/Volumes/Expansion/Surface_Azide_06252025/ClosedSearch_12/Eclipse_LF_Surface_Azide_2_06252025/psm.tsv',
  col_names = TRUE,
  name_repair = 'universal'
) |> 
  select(
    Modified.Peptide, Assigned.Modifications, Protein.ID
  ) |> 
  filter(
    str_detect(Assigned.Modifications, '96.0440|71.0370')
  ) |> 
  distinct()

cell_surface_06252025_2_H96 <- cell_surface_06252025_2 |> 
  filter(
    str_detect(Assigned.Modifications, '96.0440')
  )

cell_surface_06252025_2_K96 <- cell_surface_06252025_2 |> 
  filter(
    str_detect(Assigned.Modifications, '71.0370')
  )

# Result Combination 1&2
cell_surface_06252025_12_combined <- tibble(
  Exp = c('Exp1', 'Exp1', 'Exp2', 'Exp2'),
  Modification = c('96.0440', '71.0370', '96.0440', '71.0370'),
  Unique_Peptide = c(
    cell_surface_06252025_1_H96 |> nrow(),
    cell_surface_06252025_1_K96 |> nrow(),
    cell_surface_06252025_2_H96 |> nrow(),
    cell_surface_06252025_2_K96 |> nrow()
  )
)

# Bar Plot
barplot_cell_surface_06252025_12_combined <- cell_surface_06252025_12_combined |> 
  ggplot() +
  geom_bar(
    aes(
      x = Modification, y = Unique_Peptide, fill = Exp
    ),
    stat = 'identity', position = position_dodge()
  ) +
  geom_text(
    aes(
      x = Modification, y = Unique_Peptide, label = Unique_Peptide, group = Exp
    ),
    position = position_dodge(0.9),
    vjust = -0.3,
    size = 8
  )





