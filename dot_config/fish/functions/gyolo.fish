function gyolo --wraps="git add * && git commit -m 'yolo' && git push" --description "alias gyolo=git add * && git commit -m 'yolo' && git push"
    git add * && git commit -m 'yolo' && git push $argv
end
