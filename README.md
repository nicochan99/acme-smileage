# Acme::Smileage

All about Japanese pop star "S/mileage".

"S/mileage" is one of highly famous Japanese pop stars.
This module, acme-smileage, provides an easy method to catch up with S/mileage.

## Installation

Add this line to your application's Gemfile:

    gem 'acme-smileage'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install acme-smileage

## Usage

    require "acme/smileage"

    sm = Acme::Smileage.new

    ## Member infomation

    all_members          = sm.members
    active_members       = sm.members {|m| m.active? }
    graduated_members    = sm.members {|m| m.graduated? }
    at_some_time_members = sm.members {|m| m.active?(Date.new(2010, 10, 10)) }

    member = sm.members {|m| m.name_en =~ /rina/i }.first
    p member.name                              #=> "Rina Katsuta"
    p member.name_en                           #=> "Rina Katsuta"
    p member.family_name_en                    #=> "Katsuta"
    p member.first_name_en                     #=> "Rina"
    p member.name_ja                           #=> "勝田里奈"
    p member.family_name_ja                    #=> "勝田"
    p member.first_name_ja                     #=> "里奈"
    p member.birthday                          #=> #<Date: 1998-04-06 ((2450910j,0s,0n),+0s,2299161j)>
    p member.blood_type                        #=> "A"
    p member.hometown                          #=> "東京"
    p member.emoticon                          #=> "ﾘﾅp´ v｀)"
    p member.nicknames                         #=> ["りなぷ〜"]
    p member.member_color                      #=> "Yellow"
    p member.blog_link                         #=> "http://ameblo.jp/smileage-submember/"
    p member.generation                        #=> 2
    p member.join_date                         #=> #<Date: 2011-08-14 ((2455788j,0s,0n),+0s,2299161j)>
    p member.graduate_date                     #=> nil
    p member.age                               #=> 16
    p member.age(Date.new(2020, 1, 1))         #=> 21
    p member.active?                           #=> true
    p member.active?(Date.new(2010, 1, 1))     #=> false
    p member.graduated?                        #=> false
    p member.graduated?(Date.new(2010, 1, 1))  #=> false


    ## Track infomation

    all_tracks           = sm.tracks
    all_cover_tracks     = sm.tracks {|e| e.cover? }
    all_remix_tracks     = sm.tracks {|e| e.remix? }

    track = sm.find_track("ヤッタルチャン")
    p track.name                #=> "ヤッタルチャン"
    p track.name_romaji         #=> "yattaruchan"
    p track.nicknames           #=> ["ヤッタル"]
    p track.lyricists           #=> ["つんく♂"]
    p track.composers           #=> ["つんく♂"]
    p track.arrangers           #=> ["大久保薫"]

    # ハロプロ楽曲対象ランキング
    if track.hpma
      p track.hpma.year         #=> 2013
      p track.hpma.rank         #=> 2
      p track.hpma.votes        #=> 939
      p track.hpma.points       #=> 2343.5
    end

    p track.cover?              #=> false
    p track.remix?              #=> false
    p track.get_lyrics          #=> "世の中な　なんやかんや言うてもな (省略)"
    p track.get_lyrics(:utanet) #=> "世の中な　なんやかんや言うてもな (省略)"
    p track.get_lyrics(:utamap) #=> "世の中な なんやかんや言うてもな (省略)"

    p track.lyric_links         #=> {
                                #     :utamap => "http://www.utamap.com/showkasi.php?surl=k-130703-251",
                                #     :utanet => "http://www.uta-net.com/song/148899/",
                                #   }

    p track.youtube_links       #=> [
                                #     {
                                #       :title => "スマイレージ 『ヤッタルチャン』(S/mileage[Yattaruchan]) (MV)",
                                #       :uri => "https://www.youtube.com/watch?v=emiJ1iGih6U",
                                #     },
                                #     {
                                #       :title => "スマイレージ 『ヤッタルチャン』(S/mileage[Yattaruchan]) (Dance Shot Ver.)",
                                #       :uri => "https://www.youtube.com/watch?v=fwpjnUSvyKk",
                                #     },
                                #   ]

    p track.itunes_links        #=> [
                                #     {
                                #       :title => "新しい私になれ！／ヤッタルチャン",
                                #       :uri => "https://itunes.apple.com/jp/album/id663131682",
                                #     },
                                #   ]


    ## Discography infomation

    all_single_albums    = sm.discography
    all_singles          = sm.discography {|e| e.single? }
    all_indies_singles   = sm.discography {|e| e.indies? and e.single? }
    all_major_singles    = sm.discography {|e| e.major? and e.single? }
    all_albums           = sm.discography {|e| e.album? }
    all_original_albums  = sm.discography {|e| e.original_album? }
    all_best_albums      = sm.discography {|e| e.best_album? }

    album = sm.find_discography("スマセン")
    p album.name                       #=> "�Aスマイルセンセーション"
    p album.name_romaji                #=> "(2) smile sensation"
    p album.nicknames                  #=> ["スマセン"]
    p album.release_date               #=> #<Date: 2013-05-22 ((2456435j,0s,0n),+0s,2299161j)>
    p album.discography_link           #=> "http://s-mileage.jp/discography/detail_00146/"
    p album.artwork_links              #=> [
                                       #     {
                                       #       :title => "�Aスマイルセンセーション 【通常盤】",
                                       #       :uri => "http://s-mileage.jp/discography/obj/img/000/146/130425-1954_01l.jpg",
                                       #     },
                                       #     {
                                       #       :title => "�Aスマイルセンセーション 【初回生産限定盤】",
                                       #       :uri => "http://s-mileage.jp/discography/obj/img/000/146/130425-1954_02l.jpg",
                                       #     },
                                       #   ]

    # オリコンセールス
    if album.oricon
      p album.oricon.first_week_sales  #=> 6199
      p album.oricon.total_sales       #=> 7091
      p album.oricon.peak_rank         #=> 13
      p album.oricon.weeks_on_chart    #=> 3
    end

    p album.tracks.length              #=> 10
    p album.single?                    #=> false
    p album.album?                     #=> true
    p album.best_album?                #=> false
    p album.original_album?            #=> true
    p album.major?                     #=> true
    p album.indies?                    #=> false
    p album.download_only?             #=> false


## Contributing

1. Fork it ( http://github.com/nicochan99/acme-smileage/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
