module Hanabi

using Hanabi_jll
export Hanabi_jll

struct PyHanabiCard
    color::Cint
    rank::Cint
end

const pyhanabi_card_t = PyHanabiCard

struct PyHanabiCardKnowledge
    knowledge::Ptr{Cvoid}
end

const pyhanabi_card_knowledge_t = PyHanabiCardKnowledge

struct PyHanabiMove
    move::Ptr{Cvoid}
end

const pyhanabi_move_t = PyHanabiMove

struct PyHanabiHistoryItem
    item::Ptr{Cvoid}
end

const pyhanabi_history_item_t = PyHanabiHistoryItem

struct PyHanabiState
    state::Ptr{Cvoid}
end

const pyhanabi_state_t = PyHanabiState

struct PyHanabiGame
    game::Ptr{Cvoid}
end

const pyhanabi_game_t = PyHanabiGame

struct PyHanabiObservation
    observation::Ptr{Cvoid}
end

const pyhanabi_observation_t = PyHanabiObservation

struct PyHanabiObservationEncoder
    encoder::Ptr{Cvoid}
end

const pyhanabi_observation_encoder_t = PyHanabiObservationEncoder

function DeleteString(str)
    ccall((:DeleteString, libhanabi), Cvoid, (Ptr{Cchar},), str)
end

function CardValid(card)
    ccall((:CardValid, libhanabi), Cint, (Ptr{pyhanabi_card_t},), card)
end

function CardKnowledgeToString(knowledge)
    ccall((:CardKnowledgeToString, libhanabi), Ptr{Cchar}, (Ptr{pyhanabi_card_knowledge_t},), knowledge)
end

function ColorWasHinted(knowledge)
    ccall((:ColorWasHinted, libhanabi), Cint, (Ptr{pyhanabi_card_knowledge_t},), knowledge)
end

function KnownColor(knowledge)
    ccall((:KnownColor, libhanabi), Cint, (Ptr{pyhanabi_card_knowledge_t},), knowledge)
end

function ColorIsPlausible(knowledge, color)
    ccall((:ColorIsPlausible, libhanabi), Cint, (Ptr{pyhanabi_card_knowledge_t}, Cint), knowledge, color)
end

function RankWasHinted(knowledge)
    ccall((:RankWasHinted, libhanabi), Cint, (Ptr{pyhanabi_card_knowledge_t},), knowledge)
end

function KnownRank(knowledge)
    ccall((:KnownRank, libhanabi), Cint, (Ptr{pyhanabi_card_knowledge_t},), knowledge)
end

function RankIsPlausible(knowledge, rank)
    ccall((:RankIsPlausible, libhanabi), Cint, (Ptr{pyhanabi_card_knowledge_t}, Cint), knowledge, rank)
end

function DeleteMoveList(movelist)
    ccall((:DeleteMoveList, libhanabi), Cvoid, (Ptr{Cvoid},), movelist)
end

function NumMoves(movelist)
    ccall((:NumMoves, libhanabi), Cint, (Ptr{Cvoid},), movelist)
end

function GetMove(movelist, index, move)
    ccall((:GetMove, libhanabi), Cvoid, (Ptr{Cvoid}, Cint, Ptr{pyhanabi_move_t}), movelist, index, move)
end

function DeleteMove(move)
    ccall((:DeleteMove, libhanabi), Cvoid, (Ptr{pyhanabi_move_t},), move)
end

function MoveToString(move)
    ccall((:MoveToString, libhanabi), Ptr{Cchar}, (Ptr{pyhanabi_move_t},), move)
end

function MoveType(move)
    ccall((:MoveType, libhanabi), Cint, (Ptr{pyhanabi_move_t},), move)
end

function CardIndex(move)
    ccall((:CardIndex, libhanabi), Cint, (Ptr{pyhanabi_move_t},), move)
end

function TargetOffset(move)
    ccall((:TargetOffset, libhanabi), Cint, (Ptr{pyhanabi_move_t},), move)
end

function MoveColor(move)
    ccall((:MoveColor, libhanabi), Cint, (Ptr{pyhanabi_move_t},), move)
end

function MoveRank(move)
    ccall((:MoveRank, libhanabi), Cint, (Ptr{pyhanabi_move_t},), move)
end

function GetDiscardMove(card_index, move)
    ccall((:GetDiscardMove, libhanabi), Bool, (Cint, Ptr{pyhanabi_move_t}), card_index, move)
end

function GetPlayMove(card_index, move)
    ccall((:GetPlayMove, libhanabi), Bool, (Cint, Ptr{pyhanabi_move_t}), card_index, move)
end

function GetRevealColorMove(target_offset, color, move)
    ccall((:GetRevealColorMove, libhanabi), Bool, (Cint, Cint, Ptr{pyhanabi_move_t}), target_offset, color, move)
end

function GetRevealRankMove(target_offset, rank, move)
    ccall((:GetRevealRankMove, libhanabi), Bool, (Cint, Cint, Ptr{pyhanabi_move_t}), target_offset, rank, move)
end

function DeleteHistoryItem(item)
    ccall((:DeleteHistoryItem, libhanabi), Cvoid, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemToString(item)
    ccall((:HistoryItemToString, libhanabi), Ptr{Cchar}, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemMove(item, move)
    ccall((:HistoryItemMove, libhanabi), Cvoid, (Ptr{pyhanabi_history_item_t}, Ptr{pyhanabi_move_t}), item, move)
end

function HistoryItemPlayer(item)
    ccall((:HistoryItemPlayer, libhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemScored(item)
    ccall((:HistoryItemScored, libhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemInformationToken(item)
    ccall((:HistoryItemInformationToken, libhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemColor(item)
    ccall((:HistoryItemColor, libhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemRank(item)
    ccall((:HistoryItemRank, libhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemRevealBitmask(item)
    ccall((:HistoryItemRevealBitmask, libhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemNewlyRevealedBitmask(item)
    ccall((:HistoryItemNewlyRevealedBitmask, libhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemDealToPlayer(item)
    ccall((:HistoryItemDealToPlayer, libhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function NewState(game, state)
    ccall((:NewState, libhanabi), Cvoid, (Ptr{pyhanabi_game_t}, Ptr{pyhanabi_state_t}), game, state)
end

function CopyState(src, dest)
    ccall((:CopyState, libhanabi), Cvoid, (Ptr{pyhanabi_state_t}, Ptr{pyhanabi_state_t}), src, dest)
end

function DeleteState(state)
    ccall((:DeleteState, libhanabi), Cvoid, (Ptr{pyhanabi_state_t},), state)
end

function StateParentGame(state)
    ccall((:StateParentGame, libhanabi), Ptr{Cvoid}, (Ptr{pyhanabi_state_t},), state)
end

function StateApplyMove(state, move)
    ccall((:StateApplyMove, libhanabi), Cvoid, (Ptr{pyhanabi_state_t}, Ptr{pyhanabi_move_t}), state, move)
end

function StateCurPlayer(state)
    ccall((:StateCurPlayer, libhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateDealRandomCard(state)
    ccall((:StateDealRandomCard, libhanabi), Cvoid, (Ptr{pyhanabi_state_t},), state)
end

function StateDeckSize(state)
    ccall((:StateDeckSize, libhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateFireworks(state, color)
    ccall((:StateFireworks, libhanabi), Cint, (Ptr{pyhanabi_state_t}, Cint), state, color)
end

function StateDiscardPileSize(state)
    ccall((:StateDiscardPileSize, libhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateGetDiscard(state, index, card)
    ccall((:StateGetDiscard, libhanabi), Cvoid, (Ptr{pyhanabi_state_t}, Cint, Ptr{pyhanabi_card_t}), state, index, card)
end

function StateGetHandSize(state, pid)
    ccall((:StateGetHandSize, libhanabi), Cint, (Ptr{pyhanabi_state_t}, Cint), state, pid)
end

function StateGetHandCard(state, pid, index, card)
    ccall((:StateGetHandCard, libhanabi), Cvoid, (Ptr{pyhanabi_state_t}, Cint, Cint, Ptr{pyhanabi_card_t}), state, pid, index, card)
end

function StateEndOfGameStatus(state)
    ccall((:StateEndOfGameStatus, libhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateInformationTokens(state)
    ccall((:StateInformationTokens, libhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateLegalMoves(state)
    ccall((:StateLegalMoves, libhanabi), Ptr{Cvoid}, (Ptr{pyhanabi_state_t},), state)
end

function StateLifeTokens(state)
    ccall((:StateLifeTokens, libhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateNumPlayers(state)
    ccall((:StateNumPlayers, libhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateScore(state)
    ccall((:StateScore, libhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateToString(state)
    ccall((:StateToString, libhanabi), Ptr{Cchar}, (Ptr{pyhanabi_state_t},), state)
end

function MoveIsLegal(state, move)
    ccall((:MoveIsLegal, libhanabi), Bool, (Ptr{pyhanabi_state_t}, Ptr{pyhanabi_move_t}), state, move)
end

function CardPlayableOnFireworks(state, color, rank)
    ccall((:CardPlayableOnFireworks, libhanabi), Bool, (Ptr{pyhanabi_state_t}, Cint, Cint), state, color, rank)
end

function StateLenMoveHistory(state)
    ccall((:StateLenMoveHistory, libhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateGetMoveHistory(state, index, item)
    ccall((:StateGetMoveHistory, libhanabi), Cvoid, (Ptr{pyhanabi_state_t}, Cint, Ptr{pyhanabi_history_item_t}), state, index, item)
end

function DeleteGame(game)
    ccall((:DeleteGame, libhanabi), Cvoid, (Ptr{pyhanabi_game_t},), game)
end

function NewDefaultGame(game)
    ccall((:NewDefaultGame, libhanabi), Cvoid, (Ptr{pyhanabi_game_t},), game)
end

function NewGame(game, list_length, param_list)
    ccall((:NewGame, libhanabi), Cvoid, (Ptr{pyhanabi_game_t}, Cint, Ptr{Ptr{Cchar}}), game, list_length, param_list)
end

function GameParamString(game)
    ccall((:GameParamString, libhanabi), Ptr{Cchar}, (Ptr{pyhanabi_game_t},), game)
end

function NumPlayers(game)
    ccall((:NumPlayers, libhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function NumColors(game)
    ccall((:NumColors, libhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function NumRanks(game)
    ccall((:NumRanks, libhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function HandSize(game)
    ccall((:HandSize, libhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function MaxInformationTokens(game)
    ccall((:MaxInformationTokens, libhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function MaxLifeTokens(game)
    ccall((:MaxLifeTokens, libhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function ObservationType(game)
    ccall((:ObservationType, libhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function NumCards(game, color, rank)
    ccall((:NumCards, libhanabi), Cint, (Ptr{pyhanabi_game_t}, Cint, Cint), game, color, rank)
end

function GetMoveUid(game, move)
    ccall((:GetMoveUid, libhanabi), Cint, (Ptr{pyhanabi_game_t}, Ptr{pyhanabi_move_t}), game, move)
end

function GetMoveByUid(game, move_uid, move)
    ccall((:GetMoveByUid, libhanabi), Cvoid, (Ptr{pyhanabi_game_t}, Cint, Ptr{pyhanabi_move_t}), game, move_uid, move)
end

function MaxMoves(game)
    ccall((:MaxMoves, libhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function NewObservation(state, player, observation)
    ccall((:NewObservation, libhanabi), Cvoid, (Ptr{pyhanabi_state_t}, Cint, Ptr{pyhanabi_observation_t}), state, player, observation)
end

function DeleteObservation(observation)
    ccall((:DeleteObservation, libhanabi), Cvoid, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsToString(observation)
    ccall((:ObsToString, libhanabi), Ptr{Cchar}, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsCurPlayerOffset(observation)
    ccall((:ObsCurPlayerOffset, libhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsNumPlayers(observation)
    ccall((:ObsNumPlayers, libhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsGetHandSize(observation, pid)
    ccall((:ObsGetHandSize, libhanabi), Cint, (Ptr{pyhanabi_observation_t}, Cint), observation, pid)
end

function ObsGetHandCard(observation, pid, index, card)
    ccall((:ObsGetHandCard, libhanabi), Cvoid, (Ptr{pyhanabi_observation_t}, Cint, Cint, Ptr{pyhanabi_card_t}), observation, pid, index, card)
end

function ObsGetHandCardKnowledge(observation, pid, index, knowledge)
    ccall((:ObsGetHandCardKnowledge, libhanabi), Cvoid, (Ptr{pyhanabi_observation_t}, Cint, Cint, Ptr{pyhanabi_card_knowledge_t}), observation, pid, index, knowledge)
end

function ObsDiscardPileSize(observation)
    ccall((:ObsDiscardPileSize, libhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsGetDiscard(observation, index, card)
    ccall((:ObsGetDiscard, libhanabi), Cvoid, (Ptr{pyhanabi_observation_t}, Cint, Ptr{pyhanabi_card_t}), observation, index, card)
end

function ObsFireworks(observation, color)
    ccall((:ObsFireworks, libhanabi), Cint, (Ptr{pyhanabi_observation_t}, Cint), observation, color)
end

function ObsDeckSize(observation)
    ccall((:ObsDeckSize, libhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsNumLastMoves(observation)
    ccall((:ObsNumLastMoves, libhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsGetLastMove(observation, index, item)
    ccall((:ObsGetLastMove, libhanabi), Cvoid, (Ptr{pyhanabi_observation_t}, Cint, Ptr{pyhanabi_history_item_t}), observation, index, item)
end

function ObsInformationTokens(observation)
    ccall((:ObsInformationTokens, libhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsLifeTokens(observation)
    ccall((:ObsLifeTokens, libhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsNumLegalMoves(observation)
    ccall((:ObsNumLegalMoves, libhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsGetLegalMove(observation, index, move)
    ccall((:ObsGetLegalMove, libhanabi), Cvoid, (Ptr{pyhanabi_observation_t}, Cint, Ptr{pyhanabi_move_t}), observation, index, move)
end

function ObsCardPlayableOnFireworks(observation, color, rank)
    ccall((:ObsCardPlayableOnFireworks, libhanabi), Bool, (Ptr{pyhanabi_observation_t}, Cint, Cint), observation, color, rank)
end

function NewObservationEncoder(encoder, game, type)
    ccall((:NewObservationEncoder, libhanabi), Cvoid, (Ptr{pyhanabi_observation_encoder_t}, Ptr{pyhanabi_game_t}, Cint), encoder, game, type)
end

function DeleteObservationEncoder(encoder)
    ccall((:DeleteObservationEncoder, libhanabi), Cvoid, (Ptr{pyhanabi_observation_encoder_t},), encoder)
end

function ObservationShape(encoder)
    ccall((:ObservationShape, libhanabi), Ptr{Cchar}, (Ptr{pyhanabi_observation_encoder_t},), encoder)
end

function EncodeObservation(encoder, observation)
    ccall((:EncodeObservation, libhanabi), Ptr{Cchar}, (Ptr{pyhanabi_observation_encoder_t}, Ptr{pyhanabi_observation_t}), encoder, observation)
end

# export everything

function camel_to_underscore(s)
    replace(s, r"[A-Z]" => x -> "_" * lowercase(x))[2:end]
end

foreach(names(@__MODULE__, all=true)) do s
    if startswith(string(s), "Py")
        s_type = Symbol(string(s)[3:end])
        @eval begin
            const $s_type = $s
            export $s_type
        end
    elseif match(r"([A-Z][a-z]*)+", string(s)) !== nothing
        s_func = Symbol(camel_to_underscore(string(s)))
        @eval begin
            const $s_func = $s
            export $s_func
        end
    end
end


end # module
