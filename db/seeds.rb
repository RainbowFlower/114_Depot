# encoding: utf-8
Cart.delete_all
Order.delete_all

Pcategory.delete_all
Pcategory.create(:title => "Economy")
Pcategory.create(:title => "Life")
Pcategory.create(:title => "Literature")
Pcategory.create(:title => "Management")
Pcategory.create(:title => "Science")
Pcategory.create(:title => "Technology")

Ccategory.delete_all
Ccategory.create(:title => "Economics", :ptitle => "Economy")
Ccategory.create(:title => "Business", :ptitle => "Economy")
Ccategory.create(:title => "Cooking", :ptitle => "Life")
Ccategory.create(:title => "Health", :ptitle => "Life")
Ccategory.create(:title => "Travel", :ptitle => "Life")
Ccategory.create(:title => "Fiction", :ptitle => "Literature")
Ccategory.create(:title => "Essay", :ptitle => "Literature")
Ccategory.create(:title => "Financing", :ptitle => "Management")
Ccategory.create(:title => "Enterprise", :ptitle => "Management")
Ccategory.create(:title => "Nature", :ptitle => "Science")
Ccategory.create(:title => "Chemical", :ptitle => "Science")
Ccategory.create(:title => "Programming", :ptitle => "Technology")
Ccategory.create(:title => "Architecture", :ptitle => "Technology")

Product.delete_all
Product.create(:title => 'Web Design for Developers',
  :description => 
    %{<p>
        <em>Web Design for Developers</em> will show you how to make your
        web-based application look professionally designed. We'll help you
        learn how to pick the right colors and fonts, avoid costly interface
        and accessibility mistakes -- your application will really come alive.
        We'll also walk you through some common Photoshop and CSS techniques
        and work through a web site redesign, taking a new design from concept
        all the way to implementation.
      </p>},
  :image_url =>   '/images/wd4d.jpg',    
  :price => 42.95,
  :author => 'Brian P. Hogan',
  :ISBN => 9781934356135,
  :publisher => 'Pragmatic Bookshelf',
  :category_title => "Programming")
# . . .
Product.create(:title => 'Programming Ruby 1.9',
  :description =>
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  :image_url => '/images/ruby.jpg',
  :price => 49.50,
  :author => 'Dave Thomas',
  :ISBN => 9781934356081,
  :publisher => 'Pragmatic Bookshelf',
  :category_title => "Programming")
# . . .

Product.create(:title => 'Rails Test Prescriptions',
  :description => 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  :image_url => '/images/rtp.jpg',
  :price => 43.75,
  :author => 'Noel Rappin',
  :ISBN => 9781934356647,
  :publisher => 'Pragmatic Bookshelf',
  :category_title => "Programming")
  
Product.create(:title => 'Miette Bakery Cookbook: Recipes from San Francisco\'s Most Charming Pastry Shop ',
  :description => 
    %{<p>
        Renowned for beautiful cakes and whimsical confections, Miette Patisserie 
        is among the most beloved of San Francisco's culinary destinations for locals 
        and travelers. Miette's pretty Parisian aesthetic enchants visitors with 
        tables piled high with beribboned bags of gingersnaps, homemade marshmallows, 
        fleur de sel caramels, and rainbows of gumballs. This cookbook brings the enchantment 
        home, sharing 100 secret formulas for favorite Miette treats from chef and owner Meg Ray.
      </p>},
  :image_url => '/images/recipes.jpg',
  :price => 16.21,
  :author => 'Miette Cakes',
  :ISBN => 9780811875042,
  :publisher => 'Chronicle Books',
  :category_title => "Cooking")
  
Product.create(:title => 'Stress Proof Your Life',
  :description => 
    %{<p>
        Stress-proof your life's 3 step plan is effective and simple to use. 
        Based on the new discipline of psychophysical medicine, it eliminates the deadly 
        health effects of chronic stress.
      </p>},
  :image_url => '/images/stress.jpg',
  :price => 23.41,
  :author => 'Patrick Keeley',
  :ISBN => 9780741430137,
  :publisher => 'Infinity Publishing',
  :category_title => "Health")
  
Product.create(:title => 'Australia',
  :description => 
    %{<p>
        Island, country, continent Australia sure is a big one! Its essence is diversity: 
        deserts, tropical reefs, towering forests, mountains and multicultural cities. Charles
         Rawlings-Way & Meg Worby, Lonely Planet Writers
        Our Promise:
        You can trust our travel information because Lonely Planet authors visit the places we 
        write about, each and every edition. We never accept freebies for positive coverage, and 
        you can rely on us to tell it like we see it.
      </p>},
  :image_url => '/images/Australia.jpg',
  :price => 23.41,
  :author => 'Charles Rawlings-Way and Meg Worby',
  :ISBN => 9781741798074,
  :publisher => 'Lonely Planet Publications',
  :category_title => "Travel")
  
Product.create(:title => 'Economics',
  :description => 
    %{<p>
        Samuelson's text was first published in 1948, and it immediately became the authority 
        for the principles of economics courses. The book continues to be the standard-bearer 
        for principles courses, and this revision continues to be a clear, accurate, and 
        interesting introduction to modern economics principles. Bill Nordhaus is now the primary
        author of this text, and he has revised the book to be as current and relevant as ever.
      </p>},
  :image_url => '/images/Economics.jpg',
  :price => 30.52,
  :author => 'Paul A. Samuelson and William D. Nordhaus',
  :ISBN => 9780071263832,
  :publisher => 'McGraw Hill Higher Education',
  :category_title => "Economics")
  
Product.create(:title => 'Business',
  :description => 
    %{<p>
        The tenth edition of this best-selling introductory text features an up-to-date, 
        comprehensive survey of the functional areas of business: management, marketing, 
        accounting, finance, and information technology. Core topics highlighted within 
        these areas include ethics and social responsibility, forms of business ownership, 
        small business concerns, and international issues. New coverage in this edition more 
        closely examines cutting-edge topics like the 2008 economic crisis, green business,
        and sustainability. In addition to updating and revitalizing the content, the authors 
        have redesigned the entire textbook program to highlight its strengths as the most 
        accessible and student friendly program on the market. The new online resources no 
        longer require a passkey and put students on the path to success and mastery through 
        premium online study content, including ACE Plus practice tests, flashcards, MP3 audio 
        chapter summaries and quizzes, interactive games, and Career Snapshots.
      </p>},
  :image_url => '/images/Business.jpg',
  :price => 48.67,
  :author => 'William K. Pride, Robert J. Hughes and Jack R. Kapoor',
  :ISBN => 9781439037515,
  :publisher => 'South-Western, Division of Thomson Learning',
  :category_title => "Business")
  
Product.create(:title => 'A BRIEF HISTORY OF CHINESE FICTION',
  :description => 
    %{<p>
        This book was written by Lu Hsun, pioneer and standard-bearer of modern Chinese 
        literature, during the early 1920s. It is a study of the historicaldevelopment of 
        Chinese fiction from early myths and legends down to well-developed long novels 
        written at the end of the Qing Dynasty.The characteristics of various forms of 
        fiction through the centuries, the development of these forms and their influence 
        on each other are lucidly presented, while such major works as the novels Hung Lou 
        Meng （A Dream of Red Mansions） and Shui Hu Chuan （Outlaws of the Marsh） are reviewed 
        in detail.Chinese fiction had its roots in story-telling, and folk literature of 
        this kind was despised by the feudal ruling class. The May 4th Movement of 1919 dealt 
        a mortal blow to the feudal forces in Chinese culture. Then the study of this form of 
        lit- erature began to make headway, Lu Hsun being one of the first to carry out researches 
        in the field. This book, the earliest systematic study of the history ofChinese fiction 
        by a Chinese writer, still exercises agreat influence among Chinese scholars.The English 
        translation is illustrated with re-productions of early Chinese woodcuts.
      </p>},
  :image_url => '/images/ChineseFiction.jpg',
  :price => 14.95,
  :author => 'LuXun',
  :ISBN => 9787119057507,
  :publisher => 'FOREIGN LANGUAGES PRESS',
  :category_title => "Fiction")
  
Product.create(:title => 'College Essays that Made a Difference',
  :description => 
    %{<p>
        College Essays That Made a Difference, 4th Edition includes real-life essays written 
        by applicants to Harvard, Princeton, Stanford, Yale, MIT, and more, as well as complete 
        application profiles of over 100 students, including test scores, GPAs, demographic 
        information, and where they got in and where they didn't.
     </p>},
  :image_url => '/images/Essay.jpg',
  :price => 16.72,
  :author => 'Princeton Review',
  :ISBN => 9780375427855,
  :publisher => 'Princeton Review',
  :category_title => "Essay")
  
Product.create(:title => 'Financing Your Small Business',
  :description => 
    %{<p>
        Secure your business's future using the right SBA loan, bank loan or equity financing 
        for you. When it comes to your chances of receiving financing and doing it right, 
        Financing Your Small Business provides you with all the answers you need. It helps 
        you find ways to combine various types of financing and shows you how to get the 
        money you need. Learn: How to get a bank loanHow to make a better presentation How 
        to get attention with your business plan How to choose professionalsHow to value your 
        businessHow to determine your investors' statusHow to avoid securities law problemsHow 
        to find investors From SBA loans to venture capital sources, Financing Your Small 
        Business shows you all the ways to get the money you need. Raising Money Just Got 
        Easier.
     </p>},
  :image_url => '/images/Financing.jpg',
  :price => 19.46,
  :author => 'Richard P. Lehman',
  :ISBN => 9781572485532,
  :publisher => 'Sourcebooks',
  :category_title => "Financing")
  
Product.create(:title => 'Corporate Value of Enterprise Risk Management: The Next Step in Business Management',
  :description => 
    %{<p>
        The ultimate guide to maximizing shareholder value through ERM.
        The first book to introduce an emerging approach synthesizing ERM and value-based 
        management, Corporate Value of Enterprise Risk Management clarifies ERM as a strategic 
        business management approach that enhances strategic planning and other decision-making 
        processes.
        A hot topic in the wake of a series of corporate scandals as well as the financial crisis.
        Looks at ERM as a way to deliver on the promise of balancing risk and return.
        A practical guide for corporate Chief Risk Officers (CROs) and other business professionals 
        seeking to successfully implement ERM.
        ERM is here to stay. Sharing his unique insights and experiences as a recognized global 
        thought leader in this field, author Sim Segal offers world-class guidance on how your 
        business can successfully implement ERM to protect and increase shareholder value.
     </p>},
  :image_url => '/images/Enterprise.jpg',
  :price => 84.62,
  :author => 'Sim Segal',
  :ISBN => 9780470882542,
  :publisher => 'John Wiley & Sons Ltd',
  :category_title => "Enterprise")
  
Product.create(:title => 'Man Vs. Wild: Survival Techniques from the Most Dangerous Places on Earth ',
  :description => 
    %{<p>
        In Man vs. Wild, Bear Grylls demonstrates all manner of survival techniques when faced with
         nature's extremes--from crossing piranha-infested rivers to fighting off grizzly bears. 
         He shows us how, armed with the correct know-how and a determination to stay alive, all 
         of us have the potential to beat the elements in even the bleakest of situations.
         Bear Grylls is the ultimate modern-day adventurer. He spent three years with the British 
         Special Forces (21 SAS), only leaving when a near-fatal parachuting accident broke his 
         back in three places. Just two years later, Grylls followed his childhood dream and became 
         one of the youngest climbers ever to reach the summit of Mount Everest. He is the host of 
         the Discovery Channel series Man vs. Wild, where viewers tune in to watch Grylls show 
         what it takes to find your way out of the most inhospitable places on earth with little 
         more than the clothes on your back.
         Now, in his book, he shows his millions of fans worldwide how to do what he does in an 
         utterly entertaining crash course in surviving every kind of hard ecosystem--mountain, 
         sub-zero terrain, jungle, desert, and the sea. Grylls takes readers on a journey to the 
         corners of the earth and recreates disaster scenarios such as being stranded on a desert 
         island or lost in the snowy Arctic. Perfect for armchair adventurers and extreme sports 
         buffs alike, Man vs. Wild is destined to become a classic in adventure literature. 
     </p>},
  :image_url => '/images/Bear.jpg',
  :price => 28.34,
  :author => 'Bear Grylls',
  :ISBN => 9781401322939,
  :publisher => 'Hyperion Books',
  :category_title => "Nature")
  
Product.create(:title => 'Lippincott\'s Illustrated Reviews: Biochemistry',
  :description => 
    %{<p>
        Thoroughly updated for its Fifth Edition, Lippincott's Illustrated Reviews: Biochemistry 
        enables students to quickly review and assimilate large amounts of complex information by 
        utilizing powerful visual resources that deliver the focus and clarification needed to 
        master difficult biochemical concepts. Its signature outline format, full-color 
        illustrations, end-of-chapter summaries, and USMLE-style review questions make it one 
        of the most user-friendly books in the field. New features include case studies for each 
        chapter and expanded coverage of molecular biology. A companion website offers fully 
        searchable online text and additional USMLE-style questions for students and an image 
        bank for faculty. 
     </p>},
  :image_url => '/images/chemical.jpg',
  :price => 63.58,
  :author => 'Richard A. Harvey and Denise R. Ferrier',
  :ISBN => 9781609139988,
  :publisher => 'Lippincott Williams and Wilkins',
  :category_title => "Chemical")
  
Product.create(:title => 'Modern Architecture: A Critical History',
  :description => 
    %{<p>
        This acclaimed survey of modern architecture and its origins has become a classic since 
        it first appeared in 1980. For this fourth edition, Kenneth Frampton has added a major 
        new chapter that explores the effects of globalization on architecture in recent years, 
        the rise annd rise of the celebrity architect, and the way in which practices worldwide 
        have addressed such issues as sustainability and habitat. The bibliography has also been 
        updated and expanded, making this volume more complete and indispensable than ever. 
     </p>},
  :image_url => '/images/Architecture.jpg',
  :price => 24.86,
  :author => 'Kenneth Frampton',
  :ISBN => 9780500203958,
  :publisher => 'Thames & Hudson Ltd',
  :category_title => "Architecture")

User.delete_all  
User.create(:name => 'dave', :password => 'abc', :password_confirmation => 'abc', :admin => false)
User.create(:name => 'admin', :password => 'admin', :password_confirmation => 'admin', :admin => true)
