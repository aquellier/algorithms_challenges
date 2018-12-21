# function sorts scores in a game
# unsorted_scores = [37, 89, 41, 65, 91, 53]
# HIGHEST_POSSIBLE_SCORE = 100

def sort_scores_ruby(unsorted_scores)
  unsorted_scores.sort!  { |x, y| y <=> x }
end

def sort_scores(unsorted_scores, highest_possible_score)

end


p sort_scores_ruby([37, 89,  89, 41, 65, 91, 53])
