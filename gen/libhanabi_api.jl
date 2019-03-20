# Julia wrapper for header: /home/tj/data/workspace/github/Hanabi/deps/usr/include/pyhanabi.h
# Automatically generated using Clang.jl wrap_c


function DeleteString(str)
    ccall((:DeleteString, pyhanabi), Cvoid, (Cstring,), str)
end

function CardValid(card)
    ccall((:CardValid, pyhanabi), Cint, (Ptr{pyhanabi_card_t},), card)
end

function CardKnowledgeToString(knowledge)
    ccall((:CardKnowledgeToString, pyhanabi), Cstring, (Ptr{pyhanabi_card_knowledge_t},), knowledge)
end

function ColorWasHinted(knowledge)
    ccall((:ColorWasHinted, pyhanabi), Cint, (Ptr{pyhanabi_card_knowledge_t},), knowledge)
end

function KnownColor(knowledge)
    ccall((:KnownColor, pyhanabi), Cint, (Ptr{pyhanabi_card_knowledge_t},), knowledge)
end

function ColorIsPlausible(knowledge, color)
    ccall((:ColorIsPlausible, pyhanabi), Cint, (Ptr{pyhanabi_card_knowledge_t}, Cint), knowledge, color)
end

function RankWasHinted(knowledge)
    ccall((:RankWasHinted, pyhanabi), Cint, (Ptr{pyhanabi_card_knowledge_t},), knowledge)
end

function KnownRank(knowledge)
    ccall((:KnownRank, pyhanabi), Cint, (Ptr{pyhanabi_card_knowledge_t},), knowledge)
end

function RankIsPlausible(knowledge, rank)
    ccall((:RankIsPlausible, pyhanabi), Cint, (Ptr{pyhanabi_card_knowledge_t}, Cint), knowledge, rank)
end

function DeleteMoveList(movelist)
    ccall((:DeleteMoveList, pyhanabi), Cvoid, (Ptr{Cvoid},), movelist)
end

function NumMoves(movelist)
    ccall((:NumMoves, pyhanabi), Cint, (Ptr{Cvoid},), movelist)
end

function GetMove(movelist, index, move)
    ccall((:GetMove, pyhanabi), Cvoid, (Ptr{Cvoid}, Cint, Ptr{pyhanabi_move_t}), movelist, index, move)
end

function DeleteMove(move)
    ccall((:DeleteMove, pyhanabi), Cvoid, (Ptr{pyhanabi_move_t},), move)
end

function MoveToString(move)
    ccall((:MoveToString, pyhanabi), Cstring, (Ptr{pyhanabi_move_t},), move)
end

function MoveType(move)
    ccall((:MoveType, pyhanabi), Cint, (Ptr{pyhanabi_move_t},), move)
end

function CardIndex(move)
    ccall((:CardIndex, pyhanabi), Cint, (Ptr{pyhanabi_move_t},), move)
end

function TargetOffset(move)
    ccall((:TargetOffset, pyhanabi), Cint, (Ptr{pyhanabi_move_t},), move)
end

function MoveColor(move)
    ccall((:MoveColor, pyhanabi), Cint, (Ptr{pyhanabi_move_t},), move)
end

function MoveRank(move)
    ccall((:MoveRank, pyhanabi), Cint, (Ptr{pyhanabi_move_t},), move)
end

function GetDiscardMove()
    ccall((:GetDiscardMove, pyhanabi), Cint, ())
end

function GetPlayMove()
    ccall((:GetPlayMove, pyhanabi), Cint, ())
end

function GetRevealColorMove()
    ccall((:GetRevealColorMove, pyhanabi), Cint, ())
end

function GetRevealRankMove()
    ccall((:GetRevealRankMove, pyhanabi), Cint, ())
end

function DeleteHistoryItem(item)
    ccall((:DeleteHistoryItem, pyhanabi), Cvoid, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemToString(item)
    ccall((:HistoryItemToString, pyhanabi), Cstring, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemMove(item, move)
    ccall((:HistoryItemMove, pyhanabi), Cvoid, (Ptr{pyhanabi_history_item_t}, Ptr{pyhanabi_move_t}), item, move)
end

function HistoryItemPlayer(item)
    ccall((:HistoryItemPlayer, pyhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemScored(item)
    ccall((:HistoryItemScored, pyhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemInformationToken(item)
    ccall((:HistoryItemInformationToken, pyhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemColor(item)
    ccall((:HistoryItemColor, pyhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemRank(item)
    ccall((:HistoryItemRank, pyhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemRevealBitmask(item)
    ccall((:HistoryItemRevealBitmask, pyhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemNewlyRevealedBitmask(item)
    ccall((:HistoryItemNewlyRevealedBitmask, pyhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function HistoryItemDealToPlayer(item)
    ccall((:HistoryItemDealToPlayer, pyhanabi), Cint, (Ptr{pyhanabi_history_item_t},), item)
end

function NewState(game, state)
    ccall((:NewState, pyhanabi), Cvoid, (Ptr{pyhanabi_game_t}, Ptr{pyhanabi_state_t}), game, state)
end

function CopyState(src, dest)
    ccall((:CopyState, pyhanabi), Cvoid, (Ptr{pyhanabi_state_t}, Ptr{pyhanabi_state_t}), src, dest)
end

function DeleteState(state)
    ccall((:DeleteState, pyhanabi), Cvoid, (Ptr{pyhanabi_state_t},), state)
end

function StateParentGame(state)
    ccall((:StateParentGame, pyhanabi), Ptr{Cvoid}, (Ptr{pyhanabi_state_t},), state)
end

function StateApplyMove(state, move)
    ccall((:StateApplyMove, pyhanabi), Cvoid, (Ptr{pyhanabi_state_t}, Ptr{pyhanabi_move_t}), state, move)
end

function StateCurPlayer(state)
    ccall((:StateCurPlayer, pyhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateDealRandomCard(state)
    ccall((:StateDealRandomCard, pyhanabi), Cvoid, (Ptr{pyhanabi_state_t},), state)
end

function StateDeckSize(state)
    ccall((:StateDeckSize, pyhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateFireworks(state, color)
    ccall((:StateFireworks, pyhanabi), Cint, (Ptr{pyhanabi_state_t}, Cint), state, color)
end

function StateDiscardPileSize(state)
    ccall((:StateDiscardPileSize, pyhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateGetDiscard(state, index, card)
    ccall((:StateGetDiscard, pyhanabi), Cvoid, (Ptr{pyhanabi_state_t}, Cint, Ptr{pyhanabi_card_t}), state, index, card)
end

function StateGetHandSize(state, pid)
    ccall((:StateGetHandSize, pyhanabi), Cint, (Ptr{pyhanabi_state_t}, Cint), state, pid)
end

function StateGetHandCard(state, pid, index, card)
    ccall((:StateGetHandCard, pyhanabi), Cvoid, (Ptr{pyhanabi_state_t}, Cint, Cint, Ptr{pyhanabi_card_t}), state, pid, index, card)
end

function StateEndOfGameStatus(state)
    ccall((:StateEndOfGameStatus, pyhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateInformationTokens(state)
    ccall((:StateInformationTokens, pyhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateLegalMoves(state)
    ccall((:StateLegalMoves, pyhanabi), Ptr{Cvoid}, (Ptr{pyhanabi_state_t},), state)
end

function StateLifeTokens(state)
    ccall((:StateLifeTokens, pyhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateNumPlayers(state)
    ccall((:StateNumPlayers, pyhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateScore(state)
    ccall((:StateScore, pyhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateToString(state)
    ccall((:StateToString, pyhanabi), Cstring, (Ptr{pyhanabi_state_t},), state)
end

function MoveIsLegal()
    ccall((:MoveIsLegal, pyhanabi), Cint, ())
end

function CardPlayableOnFireworks()
    ccall((:CardPlayableOnFireworks, pyhanabi), Cint, ())
end

function StateLenMoveHistory(state)
    ccall((:StateLenMoveHistory, pyhanabi), Cint, (Ptr{pyhanabi_state_t},), state)
end

function StateGetMoveHistory(state, index, item)
    ccall((:StateGetMoveHistory, pyhanabi), Cvoid, (Ptr{pyhanabi_state_t}, Cint, Ptr{pyhanabi_history_item_t}), state, index, item)
end

function DeleteGame(game)
    ccall((:DeleteGame, pyhanabi), Cvoid, (Ptr{pyhanabi_game_t},), game)
end

function NewDefaultGame(game)
    ccall((:NewDefaultGame, pyhanabi), Cvoid, (Ptr{pyhanabi_game_t},), game)
end

function NewGame(game, list_length, param_list)
    ccall((:NewGame, pyhanabi), Cvoid, (Ptr{pyhanabi_game_t}, Cint, Ptr{Cstring}), game, list_length, param_list)
end

function GameParamString(game)
    ccall((:GameParamString, pyhanabi), Cstring, (Ptr{pyhanabi_game_t},), game)
end

function NumPlayers(game)
    ccall((:NumPlayers, pyhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function NumColors(game)
    ccall((:NumColors, pyhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function NumRanks(game)
    ccall((:NumRanks, pyhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function HandSize(game)
    ccall((:HandSize, pyhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function MaxInformationTokens(game)
    ccall((:MaxInformationTokens, pyhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function MaxLifeTokens(game)
    ccall((:MaxLifeTokens, pyhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function ObservationType(game)
    ccall((:ObservationType, pyhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function NumCards(game, color, rank)
    ccall((:NumCards, pyhanabi), Cint, (Ptr{pyhanabi_game_t}, Cint, Cint), game, color, rank)
end

function GetMoveUid(game, move)
    ccall((:GetMoveUid, pyhanabi), Cint, (Ptr{pyhanabi_game_t}, Ptr{pyhanabi_move_t}), game, move)
end

function GetMoveByUid(game, move_uid, move)
    ccall((:GetMoveByUid, pyhanabi), Cvoid, (Ptr{pyhanabi_game_t}, Cint, Ptr{pyhanabi_move_t}), game, move_uid, move)
end

function MaxMoves(game)
    ccall((:MaxMoves, pyhanabi), Cint, (Ptr{pyhanabi_game_t},), game)
end

function NewObservation(state, player, observation)
    ccall((:NewObservation, pyhanabi), Cvoid, (Ptr{pyhanabi_state_t}, Cint, Ptr{pyhanabi_observation_t}), state, player, observation)
end

function DeleteObservation(observation)
    ccall((:DeleteObservation, pyhanabi), Cvoid, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsToString(observation)
    ccall((:ObsToString, pyhanabi), Cstring, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsCurPlayerOffset(observation)
    ccall((:ObsCurPlayerOffset, pyhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsNumPlayers(observation)
    ccall((:ObsNumPlayers, pyhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsGetHandSize(observation, pid)
    ccall((:ObsGetHandSize, pyhanabi), Cint, (Ptr{pyhanabi_observation_t}, Cint), observation, pid)
end

function ObsGetHandCard(observation, pid, index, card)
    ccall((:ObsGetHandCard, pyhanabi), Cvoid, (Ptr{pyhanabi_observation_t}, Cint, Cint, Ptr{pyhanabi_card_t}), observation, pid, index, card)
end

function ObsGetHandCardKnowledge(observation, pid, index, knowledge)
    ccall((:ObsGetHandCardKnowledge, pyhanabi), Cvoid, (Ptr{pyhanabi_observation_t}, Cint, Cint, Ptr{pyhanabi_card_knowledge_t}), observation, pid, index, knowledge)
end

function ObsDiscardPileSize(observation)
    ccall((:ObsDiscardPileSize, pyhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsGetDiscard(observation, index, card)
    ccall((:ObsGetDiscard, pyhanabi), Cvoid, (Ptr{pyhanabi_observation_t}, Cint, Ptr{pyhanabi_card_t}), observation, index, card)
end

function ObsFireworks(observation, color)
    ccall((:ObsFireworks, pyhanabi), Cint, (Ptr{pyhanabi_observation_t}, Cint), observation, color)
end

function ObsDeckSize(observation)
    ccall((:ObsDeckSize, pyhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsNumLastMoves(observation)
    ccall((:ObsNumLastMoves, pyhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsGetLastMove(observation, index, item)
    ccall((:ObsGetLastMove, pyhanabi), Cvoid, (Ptr{pyhanabi_observation_t}, Cint, Ptr{pyhanabi_history_item_t}), observation, index, item)
end

function ObsInformationTokens(observation)
    ccall((:ObsInformationTokens, pyhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsLifeTokens(observation)
    ccall((:ObsLifeTokens, pyhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsNumLegalMoves(observation)
    ccall((:ObsNumLegalMoves, pyhanabi), Cint, (Ptr{pyhanabi_observation_t},), observation)
end

function ObsGetLegalMove(observation, index, move)
    ccall((:ObsGetLegalMove, pyhanabi), Cvoid, (Ptr{pyhanabi_observation_t}, Cint, Ptr{pyhanabi_move_t}), observation, index, move)
end

function ObsCardPlayableOnFireworks()
    ccall((:ObsCardPlayableOnFireworks, pyhanabi), Cint, ())
end

function NewObservationEncoder(encoder, game, type)
    ccall((:NewObservationEncoder, pyhanabi), Cvoid, (Ptr{pyhanabi_observation_encoder_t}, Ptr{pyhanabi_game_t}, Cint), encoder, game, type)
end

function DeleteObservationEncoder(encoder)
    ccall((:DeleteObservationEncoder, pyhanabi), Cvoid, (Ptr{pyhanabi_observation_encoder_t},), encoder)
end

function ObservationShape(encoder)
    ccall((:ObservationShape, pyhanabi), Cstring, (Ptr{pyhanabi_observation_encoder_t},), encoder)
end

function EncodeObservation(encoder, observation)
    ccall((:EncodeObservation, pyhanabi), Cstring, (Ptr{pyhanabi_observation_encoder_t}, Ptr{pyhanabi_observation_t}), encoder, observation)
end
