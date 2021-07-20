require 'library.rb'

describe Library do
  it 'can find a specific book' do
    temp = Library.new
    expect(temp.find_book("POODR")).to eq({ author: 'Sandi Metz', title: 'POODR', subject: 'OOP'})
   end
   it 'can add a new book' do
    temp = Library.new
    temp.add_book({ author: 'Sandie Metz', title: 'POODR2', subject: 'OOP'})
    expect(temp.find_book("POODR2")).to eq({author: 'Sandie Metz', title: 'POODR2', subject: 'OOP'})
   end
 
   it 'can remove a book' do
    temp = Library.new
    temp.add_book({ author: 'Sandie Metz', title: 'POODR2', subject: 'OOP'})
    temp.remove_book('POODR2')
    expect(temp.find_book("POODR2")).to eq(nil)
   end
 
   it 'can list all the books on a specific subject' do
    temp = Library.new
    expect(temp.all_books_by_subject("OOP")).to eq([{:title=>"POODR", :author=>"Sandi Metz", :subject=>"OOP"}])
    expect(temp.all_books_by_subject("Ruby")).to eq([{:title=>"Learn Ruby The Hard Way",
       :author=>"Zed Shaw", :subject=>"Ruby"}, {:title=>"The Well Grounded Rubyist",
         :author=>"Sandi Metz", :subject=>"Ruby"}])
  
  end
  end
