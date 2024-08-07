-- Criatura
local monster = {
    name = "SKELETO",
    description = "Um monstro bom de mira!",
    emoji = "🏹💀",
    sound = "Clack! Clack!",
    favoriteTime = "Noturno",
    item = "Flechas ou Ossos",
    specialAbility = "Tiros Precisos!",
    weakness = "Fogo",
    attributes = {
        attack = 8,
        defense = 5,
        life = 10,
        speedAttack = 3,
        intelligence = 2,
        agility = 6
    }
}

-- Função que recebe um atributo e nos retorna uma barra de progresso em string
local function getProgressBar(attribute)
    local fullChar = "□"
    local emptyChar = "■"

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

-- Cartão
print("=============================================")
print("| ")
print("| " .. monster.name)
print("| " .. monster.description)
print("| ")
print("| Item: " .. monster.item)
print("| Som: " .. monster.sound)
print("| Emoji Favorito: " .. monster.emoji)
print("| Horário Favorito: " .. monster.favoriteTime)
print("| Habilidade Especial: " .. monster.specialAbility)
print("| Fraqueza: " .. monster.weakness)
print("| ")
print("| Atributos")
print("| Ataque:           " .. getProgressBar(monster.attributes.attack))
print("| Defesa:           " .. getProgressBar(monster.attributes.defense))
print("| Vida:             " .. getProgressBar(monster.attributes.life))
print("| Velocidade:       " .. getProgressBar(monster.attributes.speedAttack))
print("| Inteligência:     " .. getProgressBar(monster.attributes.intelligence))
print("| Agilidade:        " .. getProgressBar(monster.attributes.agility))
print("| ")
print("=============================================")
