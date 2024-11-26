module Battle where
import Weather
import Turn
import Pokemon
data Battle=Battle{
    turn::Int
    ,activePokemon::Pokemon
    ,inactivePokemons::[Pokemon]
    ,weather::Weather
    ,specialEffects::[SpecialEffect] --Gravity, Trick Room etc
    ,hazards::[Hazard] --Spikes stealth rock
}

data BattleChoice = BattleChoice{
    choice :: Either Move Swap
}

data Move = Move{
    power::Int
    ,acc::Int
    ,pp::Int
    ,description::String
}
data Swap = Swap{
    target::Pokemon
}
