# -*- coding: utf-8 -*-
require "lib/guests"

module Acts
  def self.all
    @@all ||= find_all
  end

  def self.find_all
    [Act.new(:number => 'I',
             :description => "Introduksjon til serien. Litt om spillet og tankene bak.",
             :episodes => [ FirstEpisode.new(:number => '01', :vid => '317CL6bO6fM', :size => "111mb", :name => "Introduksjon") ]
             ),

     Act.new(:number => 'II',
             :description => "Grunnleggende testdrevet utvikling og refaktorering, samt oppsett av miljø med JsTestDriver.",
             :episodes => [
                           Episode.new(:number => '02', :vid => 'o5yG9Rs427A', :size => "157mb", :name => "Skjelettkode"),
                           Episode.new(:number => '03', :vid => 'tPRIMQ8XTk8', :size => "120mb", :name => "JSLint"),
                           Episode.new(:number => '04', :vid => 'fmZKWHryNwg', :size => "208mb", :name => "Roterer i grava"),
                           Episode.new(:number => '05', :vid => 'PIQcuWsSUwI', :size => "219mb", :name => "The Re-Factorer",             :guest => Guests.cjno),
                           Episode.new(:number => '06', :vid => 'uM5n1z1NHK4', :size => "261mb", :name => "1/3 of the Beast",            :guest => Guests.cjno),
                           Episode.new(:number => '07', :vid => 'QN7AOnoOVs4', :size => "222mb", :name => "Mot klokka"),
                           Episode.new(:number => '08', :vid => 'lmM0Ke-BOGY', :size => "262mb", :name => "Until You Drop")
                          ]
             ),

     Act.new(:number => 'III',
             :description => "Parprogrammering med Johannes Brodwall. Vi får opp en nettside, og starter bygging av rom.",
             :episodes => [
                           Episode.new(:number => '09', :vid => 'dDuPUCzVfWg', :size => "203mb", :name => "Backend's Back",              :guest => Guests.jhannes),
                           Episode.new(:number => '10', :vid => '7JySbj8ccEI', :size => "215mb", :name => "Roten til litt vondt",        :guest => Guests.jhannes, :github_excuse => "Ingen kode denne gangen, jeg glemte å lage ny branch for episoden. :-P"),
                           Episode.new(:number => '11', :vid => 'CzFjxmI_934', :size => "229mb", :name => "Into the Dead Sky",           :guest => Guests.jhannes),
                           Episode.new(:number => '12', :vid => 'FqA-ne912RQ', :size => "211mb", :name => "Knapt med tid",               :guest => Guests.jhannes),
                           Episode.new(:number => '13', :vid => '7OqZnzY0agM', :size => "232mb", :name => "Någonting Är Jävligt Fel")
                          ]
             ),

     Act.new(:number => 'IV',
             :description => "Refaktorering og rydding. Legger om til Buster.JS for tester, bruker Faye som event hub, og får på integrasjonstester.",
             :episodes => [
                           Episode.new(:number => '14', :vid => 'O80Bf--htnU', :size => "263mb", :name => "Buster'd",                    :guest => Guests.cjno),
                           Episode.new(:number => '15', :vid => 'tPe5ebTwsgs', :size => "164mb", :name => "Det er bare klapping"),
                           Episode.new(:number => '16', :vid => 'ORy9oITSFQU', :size => "253mb", :name => "Decouplitated"),
                           Episode.new(:number => '17', :vid => 'gzwJ2qP5n3Y', :size => "353mb", :name => "I live på CiA",               :guest => Guests.cia_audience),
                           Episode.new(:number => '18', :vid => 'gntBVEidlVo', :size => "269mb", :name => "Integrasjonstester",          :guest => Guests.cjno)
                          ]
             ),

     Act.new(:number => 'V',
             :description => "Parprogrammering med Johannes Brodwall. Zombiene bryter ned barrikaden og tar seg inn i bygningen.",
             :episodes => [
                           Episode.new(:number => '19', :vid => '2DxRUJY82Ls', :size => "205mb", :name => "Undefined zombies",           :guest => Guests.jhannes),
                           Episode.new(:number => '20', :vid => 'EdpLNRKKRdM', :size => "214mb", :name => "Brutte løfter",               :guest => Guests.jhannes),
                           Episode.new(:number => '21', :vid => 'pINQcwrJfdg', :size => "113mb", :name => "Ingen barrikade",             :guest => Guests.jhannes),
                           Episode.new(:number => '22', :vid => 'ZAg2ntLTwnM', :size => "227mb", :name => "Zombies don't eat baguettes", :guest => Guests.jhannes),
                           Episode.new(:number => '23', :vid => 'RjHTb4R87wE', :size => "209mb", :name => "Vandød nettleser",            :guest => Guests.jhannes),
                           Episode.new(:number => '24', :vid => 'bM5sCmxdDG8', :size => "320mb", :name => "Zombieslakt",                 :guest => Guests.jhannes)
                          ]
             ),

     Act.new(:number => 'VI',
             :description => "Sørger for at serveren og klienten er i synk, samt refaktorering.",
             :episodes => [
                           Episode.new(:number => '25', :vid => 'kmhgi-Ig3UI', :size => "172mb", :name => "eventHub, del 1",             :github_excuse => "Ingen kode denne gangen, jeg måtte dele opp episoden. :-P"),
                           Episode.new(:number => '26', :vid => 'K-6yOKu0F_0', :size => "160mb", :name => "eventHub, del 2"),
                           Episode.new(:number => '27', :vid => '6G-mOn7pdsw', :size => "151mb", :name => "eventHub, del 3"),
                           Episode.new(:number => '28', :vid => 'FazTtiRHsJE', :size => "103mb", :name => "Jøss, en server"),
                           Episode.new(:number => '29', :vid => 'WvLtHLe17_k', :size => "159mb", :name => "N-sync")
                          ]
             ),

     Act.new(:number => 'VII',
             :description => "En ny innfallsvinkel til spillet, sparket i gang med live parprogrammering featuring Christian Johansen på JavaZone.",
             :episodes => [
                           VimeoEpisode.new(:number => '30', :vid => '49485653', :name => "En trivelig aften på JavaZone", :guest => Guests.cjno),
                           Episode.new(:number => '31', :vid => '3rsHL90fOxE', :size => "169mb", :name => "Sperra inne")
                          ]
             ),
    ]
  end
end

class Act
  attr_reader :number, :description, :episodes

  def initialize(params)
    @number, @description, @episodes = params[:number], params[:description], params[:episodes]
  end
end

class Episodes
  def self.all
    @@all ||= find_all
  end

  def self.find_all
    Acts.all.map {|a| a.episodes }.flatten
  end

  def self.next(episode)
    all[all.index(episode) + 1]
  end
end

class Episode
  attr_reader :number, :vid, :size, :name, :github_excuse, :guest

  def initialize(params)
    @number, @vid, @size, @name = params[:number], params[:vid], params[:size], params[:name]
    @github_excuse = params[:github_excuse] || false
    @guest = params[:guest] || false
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
    'Hvis du er ny her, så vil du kanskje <a href="/">starte på forsiden</a>.'
  end

  def embed_html
    "<iframe width='835' height='505' src='http://www.youtube.com/embed/#{@vid}?hd=1' frameborder='0' allowfullscreen></iframe>"
  end

end

class VimeoEpisode < Episode
  def initialize(params)
    super(params)
  end

  def linkify(html)
    "<a href='https://vimeo.com/#{@vid}'>#{html}</a>"
  end

  def embed_html
    linkify("<img src='/images/e30.jpg'>")
  end

  def dropbox_link
    false
  end

  def download_excuse
    linkify("Du kan laste ned episoden på Vimeo.")
  end

end

class FirstEpisode < Episode
  def initialize(params)
    super(params)
  end

  def disqus_identifier
    "episode1"
  end

  def welcome_text
    'Har du lyst til å være med? Her er første episode:'
  end

  def github_link
    nil
  end

end
