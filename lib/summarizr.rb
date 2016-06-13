require "summarizr/version"

module Summarizr
  def self.importance_index(words)
    if words.length < 50
      (words.length / 20)
    elsif words.length < 250
      (words.length / 40)
    elsif words.length < 500
      (words.length / 60)
    end
  end

  def self.summarize(input)
    all_words = input.split(' ')
    threshold = importance_index(all_words)
    keywords = all_words.select { |e| all_words.count(e) > threshold && e.length > 3 }.uniq!
    if keywords == nil
      keywords = all_words.select { |e| all_words.count(e) > 2 && e.length > 3 }.uniq!
    end
    keywords.delete_if do |w|
      /(have|this|with|just|your|when|from|that|were|much|here|there|their|they)/i.match(w)
    end

    scores = {}
    paragraphs = input.split("\n")

    paragraphs.each do |paragraph|
      sentences = paragraph.split(". ")
      sentences.each do |sentence|
        if sentence == sentences[0]
          sentence_score = 1
        else
          sentence_score = 0
        end
        keywords.each do |word|
          if sentence =~ /#{word}/i
            sentence_score += 1
          end
        end
        scores[sentence] = sentence_score
      end
    end

    max_score = scores.max_by { |k,v| v }[1]
    scores.delete_if {|k,v| v <= (max_score / 2)}
    scores.keys.flatten.join("\n")
  end
end
