# Julia wrapper for header: /home/tj/data/workspace/github/Hanabi/deps/usr/include/pyhanabi.h
# Automatically generated using Clang.jl


function DeleteString(str)
    ccall((:DeleteString, libpyhanabi), Cvoid, (Cstring,), str)
end

function CardValid(card)
    ccall((:CardValid, libpyhanabi), Cint, (Ptr{pyhanabi_card_t},), card)
end

function CardKnowledgeToString(knowledge)
    ccall((:CardKnowledgeToString, libpyhanabi), Cstring, (Ptr{pyhanabi_card_knowledge_t},), knowledge)
end

function ColorWasHinted(knowledge)
    ccall((:ColorWasHinted, libpyhanabi), Cint, (Ptr{pyhanabi_card_knowledge_t},), knowledge)
end

function KnownColor(knowledge)
    ccall((:KnownColor, libpyhanabi), Cint, (Ptr{pyhanabi_card_knowledge_t},), knowledge)
end

function ColorIsPlausible(knowledge, color)
    ccall((:ColorIsPlausible, libpyhanabi), Cint, (Ptr{pyhanabi_card_knowledge_t}, Cint), knowledge, color)
end

function RankWasHinted(knowledge)
    ccall((:RankWasHinted, libpyhanabi), Cint, (Ptr{pyhanabi_card_knowledge_t},), knowledge)
end

function KnownRank(knowledge)
    ccall((:KnownRank, libpyhanabi), Cint, (Ptr{pyhanabi_card_knowledge_t},), knowledge)
end

function RankIsPlausible(knowledge, rank)
    ccall((:RankIsPlausible, libpyhanabi), Cint, (Ptr{pyhanabi_card_knowledge_t}, Cint), knowledge, rank)
end

function DeleteMoveList(movelist)
    ccall((:DeleteMoveList, libpyhanabi), Cvoid, (Ptr{Cvoid},), movelist)
end

function NumMoves(movelist)
    ccall((:NumMoves, libpyhanabi), Cint, (Ptr{Cvoid},), movelist)
end

function GetMove(movelist, index, move)
    ccall((:GetMove, libpyhanabi), Cvoid, (Ptr{Cvoid}, Cint, Ptr{pyhanabi_move_t}), movelist, index, move)
end

function DeleteMove(move)
    ccall((:DeleteMove, libpyhanabi), Cvoid, (Ptr{pyhanabi_move_t},), move)
end

function MoveToString(move)
    ccall((:MoveToString, libpyhanabi), Cstring, (Ptr{pyhanabi_move_t},), move)
end

function MoveType(move)
    ccall((:MoveType, libpyhanabi), Cint, (Ptr{pyhanabi_move_t},), move)
end

function CardIndex(move)
    ccall((:CardIndex, libpyhanabi), Cint, (Ptr{pyhanabi_move_t},), move)
end

function TargetOffset(move)
    ccall((:TargetOffset, libpyhanabi), Cint, (Ptr{pyhanabi_move_t},), move)
end

function MoveColor(move)
    ccall((:MoveColor, libpyhanabi), Cint, (Ptr{pyhanabi_move_t},), move)
end

function MoveRank(move)
    ccall((:MoveRank, libpyhanabi), Cint, (Ptr{pyhanabi_move_t},), move)
end

function GetDiscardMove()
    ccall((:GetDiscardMove, libpyhanabi), Cint, ())
end

function GetPlayMove()
    ccall((:GetPlayMove, libpyhanabi), Cint, ())
end

function GetRevealColorMove()
    ccall((:GetRevealColorMove, libpyhanabi), Cint, ())
end

function GetRevealRankMove()
    ccall((:GetRevealRankMove, libpyhanabi), Cint, ())
end

function DeleteHistoryItem(item)
    ccall((:DeleteHistoryItem, libpyhanabi), Cvoid, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemToString(item)
    ccall((:HistoryItemToString, libpyhanabi), Cstring, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemMove(item, move)
    ccall((:HistoryItemMove, libpyhanabi), Cvoid, (Ptr{pyhanabi_history_item_t}, Ptr{pyhanabi_move_t}), item, move)
end

function HistoryItemPlayer(item)
    ccall((:HistoryItemPlayer, libpyhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemScored(item)
    ccall((:HistoryItemScored, libpyhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemInformationToken(item)
    ccall((:HistoryItemInformationToken, libpyhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemColor(item)
    ccall((:HistoryItemColor, libpyhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemRank(item)
    ccall((:HistoryItemRank, libpyhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemRevealBitmask(item)
    ccall((:HistoryItemRevealBitmask, libpyhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemNewlyRevealedBitmask(item)
    ccall((:HistoryItemNewlyRevealedBitmask, libpyhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemDealToPlayer(item)
    ccall((:HistoryItemDealToPlayer, libpyhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function NewState(game, state)
    ccall((:NewState, libpyhanabi), Cvoid, (Ptr{pyhanabi_game_t}, Ptr{pyhanabi_state_t}), game, state)
end

function CopyState(src, dest)
    ccall((:CopyState, libpyhanabi), Cvoid, (Ptr{pyhanabi_state_t}, Ptr{pyhanabi_state_t}), src, dest)
end

function DeleteState(state)
    ccall((:DeleteState, libpyhanabi), Cvoid, (Ptr{pyhanabi_state_t},), state)
end

function StateParentGame(state)
    ccall((:StateParentGame, libpyhanabi), Ptr{Cvoid}, (Ptr{pyhanabi_state_t},), state)
end

function StateApplyMove(state, move)
    ccall((:StateApplyMove, libpyhanabi), Cvoid, (Ptr{pyhanabi_state_t}, Ptr{pyhanabi_move_t}), state, move)
end

function StateCurPlayer(state)
    ccall((:StateCurPlayer, libpyhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateDealRandomCard(state)
    ccall((:StateDealRandomCard, libpyhanabi), Cvoid, (Ptr{pyhanabi_state_t},), state)
end

function StateDeckSize(state)
    ccall((:StateDeckSize, libpyhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateFireworks(state, color)
    ccall((:StateFireworks, libpyhanabi), Cint, (Ptr{pyhanabi_state_t}, Cint), state, color)
end

function StateDiscardPileSize(state)
    ccall((:StateDiscardPileSize, libpyhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateGetDiscard(state, index, card)
    ccall((:StateGetDiscard, libpyhanabi), Cvoid, (Ptr{pyhanabi_state_t}, Cint, Ptr{pyhanabi_card_t}), state, index, card)
end

function StateGetHandSize(state, pid)
    ccall((:StateGetHandSize, libpyhanabi), Cint, (Ptr{pyhanabi_state_t}, Cint), state, pid)
end

function StateGetHandCard(state, pid, index, card)
    ccall((:StateGetHandCard, libpyhanabi), Cvoid, (Ptr{pyhanabi_state_t}, Cint, Cint, Ptr{pyhanabi_card_t}), state, pid, index, card)
end

function StateEndOfGameStatus(state)
    ccall((:StateEndOfGameStatus, libpyhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateInformationTokens(state)
    ccall((:StateInformationTokens, libpyhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateLegalMoves(state)
    ccall((:StateLegalMoves, libpyhanabi), Ptr{Cvoid}, (Ptr{pyhanabi_state_t},), state)
end

function StateLifeTokens(state)
    ccall((:StateLifeTokens, libpyhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateNumPlayers(state)
    ccall((:StateNumPlayers, libpyhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateScore(state)
    ccall((:StateScore, libpyhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateToString(state)
    ccall((:StateToString, libpyhanabi), Cstring, (Ptr{pyhanabi_state_t},), state)
end

function MoveIsLegal()
    ccall((:MoveIsLegal, libpyhanabi), Cint, ())
end

function CardPlayableOnFireworks()
    ccall((:CardPlayableOnFireworks, libpyhanabi), Cint, ())
end

function StateLenMoveHistory(state)
    ccall((:StateLenMoveHistory, libpyhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateGetMoveHistory(state, index, item)
    ccall((:StateGetMoveHistory, libpyhanabi), Cvoid, (Ptr{pyhanabi_state_t}, Cint, Ptr{pyhanabi_history_item_t}), state, index, item)
end

function DeleteGame(game)
    ccall((:DeleteGame, libpyhanabi), Cvoid, (Ptr{pyhanabi_game_t},), game)
end

function NewDefaultGame(game)
    ccall((:NewDefaultGame, libpyhanabi), Cvoid, (Ptr{pyhanabi_game_t},), game)
end

function NewGame(game, list_length, param_list)
    ccall((:NewGame, libpyhanabi), Cvoid, (Ptr{pyhanabi_game_t}, Cint, Ptr{Cstring}), game, list_length, param_list)
end

function GameParamString(game)
    ccall((:GameParamString, libpyhanabi), Cstring, (Ptr{pyhanabi_game_t},), game)
end

function NumPlayers(game)
    ccall((:NumPlayers, libpyhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function NumColors(game)
    ccall((:NumColors, libpyhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function NumRanks(game)
    ccall((:NumRanks, libpyhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function HandSize(game)
    ccall((:HandSize, libpyhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function MaxInformationTokens(game)
    ccall((:MaxInformationTokens, libpyhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function MaxLifeTokens(game)
    ccall((:MaxLifeTokens, libpyhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function ObservationType(game)
    ccall((:ObservationType, libpyhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function NumCards(game, color, rank)
    ccall((:NumCards, libpyhanabi), Cint, (Ptr{pyhanabi_game_t}, Cint, Cint), game, color, rank)
end

function GetMoveUid(game, move)
    ccall((:GetMoveUid, libpyhanabi), Cint, (Ptr{pyhanabi_game_t}, Ptr{pyhanabi_move_t}), game, move)
end

function GetMoveByUid(game, move_uid, move)
    ccall((:GetMoveByUid, libpyhanabi), Cvoid, (Ptr{pyhanabi_game_t}, Cint, Ptr{pyhanabi_move_t}), game, move_uid, move)
end

function MaxMoves(game)
    ccall((:MaxMoves, libpyhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function NewObservation(state, player, observation)
    ccall((:NewObservation, libpyhanabi), Cvoid, (Ptr{pyhanabi_state_t}, Cint, Ptr{pyhanabi_observation_t}), state, player, observation)
end

function DeleteObservation(observation)
    ccall((:DeleteObservation, libpyhanabi), Cvoid, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsToString(observation)
    ccall((:ObsToString, libpyhanabi), Cstring, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsCurPlayerOffset(observation)
    ccall((:ObsCurPlayerOffset, libpyhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsNumPlayers(observation)
    ccall((:ObsNumPlayers, libpyhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsGetHandSize(observation, pid)
    ccall((:ObsGetHandSize, libpyhanabi), Cint, (Ptr{pyhanabi_observation_t}, Cint), observation, pid)
end

function ObsGetHandCard(observation, pid, index, card)
    ccall((:ObsGetHandCard, libpyhanabi), Cvoid, (Ptr{pyhanabi_observation_t}, Cint, Cint, Ptr{pyhanabi_card_t}), observation, pid, index, card)
end

function ObsGetHandCardKnowledge(observation, pid, index, knowledge)
    ccall((:ObsGetHandCardKnowledge, libpyhanabi), Cvoid, (Ptr{pyhanabi_observation_t}, Cint, Cint, Ptr{pyhanabi_card_knowledge_t}), observation, pid, index, knowledge)
end

function ObsDiscardPileSize(observation)
    ccall((:ObsDiscardPileSize, libpyhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsGetDiscard(observation, index, card)
    ccall((:ObsGetDiscard, libpyhanabi), Cvoid, (Ptr{pyhanabi_observation_t}, Cint, Ptr{pyhanabi_card_t}), observation, index, card)
end

function ObsFireworks(observation, color)
    ccall((:ObsFireworks, libpyhanabi), Cint, (Ptr{pyhanabi_observation_t}, Cint), observation, color)
end

function ObsDeckSize(observation)
    ccall((:ObsDeckSize, libpyhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsNumLastMoves(observation)
    ccall((:ObsNumLastMoves, libpyhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsGetLastMove(observation, index, item)
    ccall((:ObsGetLastMove, libpyhanabi), Cvoid, (Ptr{pyhanabi_observation_t}, Cint, Ptr{pyhanabi_history_item_t}), observation, index, item)
end

function ObsInformationTokens(observation)
    ccall((:ObsInformationTokens, libpyhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsLifeTokens(observation)
    ccall((:ObsLifeTokens, libpyhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsNumLegalMoves(observation)
    ccall((:ObsNumLegalMoves, libpyhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsGetLegalMove(observation, index, move)
    ccall((:ObsGetLegalMove, libpyhanabi), Cvoid, (Ptr{pyhanabi_observation_t}, Cint, Ptr{pyhanabi_move_t}), observation, index, move)
end

function ObsCardPlayableOnFireworks()
    ccall((:ObsCardPlayableOnFireworks, libpyhanabi), Cint, ())
end

function NewObservationEncoder(encoder, game, type)
    ccall((:NewObservationEncoder, libpyhanabi), Cvoid, (Ptr{pyhanabi_observation_encoder_t}, Ptr{pyhanabi_game_t}, Cint), encoder, game, type)
end

function DeleteObservationEncoder(encoder)
    ccall((:DeleteObservationEncoder, libpyhanabi), Cvoid, (Ptr{pyhanabi_observation_encoder_t},), encoder)
end

function ObservationShape(encoder)
    ccall((:ObservationShape, libpyhanabi), Cstring, (Ptr{pyhanabi_observation_encoder_t},), encoder)
end

function EncodeObservation(encoder, observation)
    ccall((:EncodeObservation, libpyhanabi), Cstring, (Ptr{pyhanabi_observation_encoder_t}, Ptr{pyhanabi_observation_t}), encoder, observation)
end
