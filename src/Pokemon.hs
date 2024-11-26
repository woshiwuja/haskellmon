module Pokemon where

data Pokemon = Pokemon
  { base :: PokemonBase,
    name :: Maybe String,
    level :: Int, -- 1-100
    heldItem :: Either String Int,
    stats :: Stats,
    evs :: Evs, -- effort values
    ivs :: Ivs, -- individual values
    nature :: String -- ex Hardy
  }

data PokemonBase = PokemonBase
  { species :: String,
    baseStats :: Stats,
    possibleAbilities :: [String]
  }

data Evs = Evs
  { hpEvs :: Int,
    attackEvs :: Int,
    defenseEvs :: Int,
    specialAttackEvs :: Int,
    specialDefenseEvs :: Int,
    speedEvs :: Int
  }

data Ivs = Ivs
  { hpIvs :: Int,
    attackIvs :: Int,
    defenseIvs :: Int,
    specialAttackIvs :: Int,
    specialDefenseIvs :: Int,
    speedIvs :: Int
  }

data Stats = Stats
  { hpStat :: Int,
    attackStat :: Int,
    defenseStat :: Int,
    specialAttackStat :: Int,
    specialDefenseStat :: Int,
    speedStat :: Int
  }