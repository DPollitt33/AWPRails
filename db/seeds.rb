#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8

#Store info
Info.delete_all
Info.create!(name: 'Needful Things',
	phone: '(666) 666-6666',
	email: 'NotTheDevil@hotmail.com',
	address: '77 Pleasant Dr, Earth City, Replacement Dimension',
	intro: 
		%{<p>
				This is the store home page. Here at the storefront, we sell things! Buy them!
			</p>},
	about: 
		%{<p>
				We here at the store front believe in the right of people to buy things <br>
				We've been selling things for people to buy since 2004, when we bought our domain <br>
				That's over a decade of selling things!
			</p>},
	policy: 
		%{<p>
				We sell your information to anybody who asks <br>
				We don't have any items, so selling your information is the only way <br>
				we stay in business <br>
				Thanks for your IP
			</p>},
	terms: 
		%{<p>
				Anybody stumbling upon this site revokes their right to a trial by jury <br>
				in a US court of law. All assets are transferable to Storefront.com, and <br>
				visitors must wear dinosaur costumes to work, punishable by law
			</p>})
# . . .

#Product info
Product.delete_all
Product.create!(title: 'Dimensional Teleporter Gun',
  description:
    %{<p>
        Journey far and wide to all corners of the multiverse! This is the key to
        finally finding a universe where your family loves you! Be sure to eliminate
        that dimension's version of yourself! Can't have any paradoxes, now can we?
      </p>},
  image_url: 'teleport.png',
  price: 39.95)
# . . .
Product.create!(title: 'Household Plumbus',
  description: 
    %{<p>
        Everyone has a plumbus in their home! Crafted from "Grade &" Dinglepop and 
        rubbed with Fleeb juice from Dimension P-492, this tool will handle all your
        plumbus-y needs... and more *winky-face*.
      </p>},
  image_url:   'plumbus.png',    
  price: 9.99)
# . . .

Product.create!(title: 'Meseeks Box',
  description: 
    %{<p>
        Household tasks getting you down? Just don't have time to please your wife?
        Need someone to create a rails application for you by Tuesday? Ask Mr. Meseeks!
        Capable of performing a number of tasks before disappearing from existence! Just
        keep it simple! (Best let the neighbor handle that frigid whore) <br> <br>
        <em> Warning: Failing to keep tasks simple may result in murderous malfunction </em>
      </p>},
  image_url: 'meseeks.png',
  price: 34.95)
