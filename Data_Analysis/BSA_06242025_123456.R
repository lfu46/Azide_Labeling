# import packages
library(tidyverse)

# BSA 06242025 1
BSA_06242025_1 <- read_tsv(
  '/Volumes/Expansion/BSA_Azide_06242025/ClosedSearch_12/Eclipse_LF_BSA_Azide_1_06242025/psm.tsv',
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

BSA_06242025_1_H96 <- BSA_06242025_1 |> 
  filter(
    str_detect(Assigned.Modifications, '96.0440')
  )

BSA_06242025_1_K96 <- BSA_06242025_1 |> 
  filter(
    str_detect(Assigned.Modifications, '71.0370')
  )

# BSA 06242025 2
BSA_06242025_2 <- read_tsv(
  '/Volumes/Expansion/BSA_Azide_06242025/ClosedSearch_12/Eclipse_LF_BSA_Azide_2_06242025/psm.tsv',
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

BSA_06242025_2_H96 <- BSA_06242025_2 |> 
  filter(
    str_detect(Assigned.Modifications, '96.0440')
  )

BSA_06242025_2_K96 <- BSA_06242025_2 |> 
  filter(
    str_detect(Assigned.Modifications, '71.0370')
  )

# Result Combination 1&2
BSA_06242025_12_combined <- tibble(
  Exp = c('Exp1', 'Exp1', 'Exp2', 'Exp2'),
  Modification = c('96.0440', '71.0370', '96.0440', '71.0370'),
  Unique_Peptide = c(
    BSA_06242025_1_H96 |> nrow(),
    BSA_06242025_1_K96 |> nrow(),
    BSA_06242025_2_H96 |> nrow(),
    BSA_06242025_2_K96 |> nrow()
  )
)

# Bar Plot
barplot_BSA_06242025_12_combined <- BSA_06242025_12_combined |> 
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
    size = 5
  )

# BSA 06242025 3
BSA_06242025_3 <- read_tsv(
  '/Volumes/Expansion/BSA_Azide_06242025/ClosedSearch_34/Eclipse_LF_BSA_Azide_3_06242025/psm.tsv',
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

BSA_06242025_3_H96 <- BSA_06242025_3 |> 
  filter(
    str_detect(Assigned.Modifications, '96.0440')
  )

BSA_06242025_3_K96 <- BSA_06242025_3 |> 
  filter(
    str_detect(Assigned.Modifications, '71.0370')
  )

# BSA 06242025 4
BSA_06242025_4 <- read_tsv(
  '/Volumes/Expansion/BSA_Azide_06242025/ClosedSearch_34/Eclipse_LF_BSA_Azide_4_06242025/psm.tsv',
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

BSA_06242025_4_H96 <- BSA_06242025_4 |> 
  filter(
    str_detect(Assigned.Modifications, '96.0440')
  )

BSA_06242025_4_K96 <- BSA_06242025_4 |> 
  filter(
    str_detect(Assigned.Modifications, '71.0370')
  )

# Result Combination 3&4
BSA_06242025_34_combined <- tibble(
  Exp = c('Exp3', 'Exp3', 'Exp4', 'Exp4'),
  Modification = c('96.0440', '71.0370', '96.0440', '71.0370'),
  Unique_Peptide = c(
    BSA_06242025_3_H96 |> nrow(),
    BSA_06242025_3_K96 |> nrow(),
    BSA_06242025_4_H96 |> nrow(),
    BSA_06242025_4_K96 |> nrow()
  )
)

# Bar Plot
barplot_BSA_06242025_34_combined <- BSA_06242025_34_combined |> 
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
    size = 5
  )

# BSA 06242025 5
BSA_06242025_5 <- read_tsv(
  '/Volumes/Expansion/BSA_Azide_06242025/ClosedSearch_56/Eclipse_LF_BSA_Azide_5_06242025/psm.tsv',
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

BSA_06242025_5_H96 <- BSA_06242025_5 |> 
  filter(
    str_detect(Assigned.Modifications, '96.0440')
  )

BSA_06242025_5_K96 <- BSA_06242025_5 |> 
  filter(
    str_detect(Assigned.Modifications, '71.0370')
  )

# BSA 06242025 6
BSA_06242025_6 <- read_tsv(
  '/Volumes/Expansion/BSA_Azide_06242025/ClosedSearch_56/Eclipse_LF_BSA_Azide_6_06242025/psm.tsv',
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

BSA_06242025_6_H96 <- BSA_06242025_6 |> 
  filter(
    str_detect(Assigned.Modifications, '96.0440')
  )

BSA_06242025_6_K96 <- BSA_06242025_6 |> 
  filter(
    str_detect(Assigned.Modifications, '71.0370')
  )

# Result Combination 5&6
BSA_06242025_56_combined <- tibble(
  Exp = c('Exp5', 'Exp5', 'Exp6', 'Exp6'),
  Modification = c('96.0440', '71.0370', '96.0440', '71.0370'),
  Unique_Peptide = c(
    BSA_06242025_5_H96 |> nrow(),
    BSA_06242025_5_K96 |> nrow(),
    BSA_06242025_6_H96 |> nrow(),
    BSA_06242025_6_K96 |> nrow()
  )
)

# Bar Plot
barplot_BSA_06242025_56_combined <- BSA_06242025_56_combined |> 
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
    size = 5
  )
