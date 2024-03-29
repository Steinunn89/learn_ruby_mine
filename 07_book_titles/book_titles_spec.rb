require_relative './book_titles'

describe Book do

  # Before every test...
  before do
    # do this. (before is a method given to use by RSpec.)
    @book = Book.new
  end

  describe 'title' do
    it 'should capitalize the first letter' do
      # @book is a variable that was defined in the before do-end block.
      @book.title = "inferno"
      expect(@book.title).to eq("Inferno")
      # Another way of saying these two lines is after we set the title of the book, when we get its title
      # it should be capitalized properly.
      # We set the title of the book with @book.title = "inferno"
      # and we get the title of the book wtih @book.title
      #
      # To be able to do @book.title = "inferno",
      # when we define the method title it has to look like this:
      #
      # def title=(string)
      #   # your code here
      # end
      #
      # The important part is that equal signs after title in the method name.
      # It lets us do @book.title = "inferno", versus @book.title("inferno") when we have the method
      #
      # def title(string)
      #   # your code here
      # end
      #
      # (i.e. w/o the equals sign)
    end

    it 'should capitalize every word' do
      @book.title = "stuart little"
      expect(@book.title).to eq("Stuart Little")
    end

    describe 'should capitalize every word except...' do
      describe 'articles' do
        specify 'the' do
          @book.title = "alexander the great"
          expect(@book.title).to eq("Alexander the Great")
        end

        specify 'a' do
          @book.title = "to kill a mockingbird"
          expect(@book.title).to eq("To Kill a Mockingbird")
        end

        specify 'an' do
          @book.title = "to eat an apple a day"
          expect(@book.title).to eq("To Eat an Apple a Day")
        end
      end

      specify 'conjunctions' do
        @book.title = "war and peace"
        expect(@book.title).to eq("War and Peace")
      end

      specify 'prepositions' do
        @book.title = "love in the time of cholera"
        expect(@book.title).to eq("Love in the Time of Cholera")
      end
    end

    describe 'should always capitalize...' do
      specify 'I' do
        @book.title = "what i wish i knew when i was 20"
        expect(@book.title).to eq("What I Wish I Knew When I Was 20")
      end

      specify 'the first word' do
        @book.title = "the man in the iron mask"
        expect(@book.title).to eq("The Man in the Iron Mask")
      end
    end
  end
end