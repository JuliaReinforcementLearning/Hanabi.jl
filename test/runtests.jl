using Hanabi
using Test

@testset "Hanabi.jl" begin
    game = Ref{HanabiGame}()
    new_default_game(game)
    @test game != C_NULL
    observation = Ref{HanabiObservation}()
    state = Ref{HanabiState}()
    new_state(game, state)
    observation = Ref{HanabiObservation}()
    new_observation(state, 0, observation)
    @test_nowarn unsafe_string(obs_to_string(observation))
end
