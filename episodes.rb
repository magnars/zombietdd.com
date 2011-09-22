class Episodes
  def self.all
    @@all ||= [
      FirstEpisode.new(:number => '01', :youtube => '317CL6bO6fM', :size => "111mb", :name => "Introduksjon"),
           Episode.new(:number => '02', :youtube => 'o5yG9Rs427A', :size => "157mb", :name => "Skjelettkode"),
           Episode.new(:number => '03', :youtube => 'tPRIMQ8XTk8', :size => "120mb", :name => "JSLint"),
           Episode.new(:number => '04', :youtube => 'fmZKWHryNwg', :size => "208mb", :name => "Roterer i grava"),
           Episode.new(:number => '05', :youtube => 'PIQcuWsSUwI', :size => "219mb", :name => "The Re-Factorer"),
           Episode.new(:number => '06', :youtube => 'uM5n1z1NHK4', :size => "261mb", :name => "1/3 of the Beast"),
           Episode.new(:number => '07', :youtube => 'QN7AOnoOVs4', :size => "222mb", :name => "Mot klokka"),
           Episode.new(:number => '08', :youtube => 'lmM0Ke-BOGY', :size => "262mb", :name => "Until You Drop"),
           Episode.new(:number => '09', :youtube => 'dDuPUCzVfWg', :size => "203mb", :name => "Backend's Back"),
           Episode.new(:number => '10', :youtube => '7JySbj8ccEI', :size => "215mb", :name => "Roten til litt vondt", :github_excuse => "Ingen kode denne gangen, jeg glemte å lage ny branch for episoden. :-P")
    ]
  end
  
  def self.next(episode)
    all[all.index(episode) + 1]
  end
end

class Episode
  attr_reader :number, :youtube, :size, :name, :github_excuse
  
  def initialize(params)
    @number, @youtube, @size, @name = params[:number], params[:youtube], params[:size], params[:name]
    @github_excuse = params[:github_excuse] || false
  end
  
  def next
    Episodes.next(self)
  end
  
  def title
    "Episode #{@number.to_i}: #{@name}"
  end
  
  def disqus_identifier
    "episode#{@number}"
  end
  
  def link
    "/e#{@number}.html"
  end
  
  def dropbox_link
    "http://dl.dropbox.com/u/3615058/zombietdd/#{filename}"
  end
  
  def github_link
    "https://github.com/magnars/Zombie-TDD/tree/episode_#{@number}" unless @github_excuse
  end
  
  def filename
    "zombietdd_#{@number}.mov"
  end
  
  def welcome_text
    'Hvis du er ny her, så er det best å starte på <a href="/">første episode</a>.'
  end
  
end

class FirstEpisode < Episode
  def initialize(params)
    super(params)
  end
  
  def disqus_identifier
    "episode1"
  end

  def link
    "/"
  end

  def welcome_text
    'Har du lyst til å være med? Her er første episode:'
  end
  
  def github_link
    nil
  end
  
end
