=begin #### Release 2 ####

1. We found a nifty one on anchor.com (https://www.anchor.com.au/wp-content/uploads/rspec_cheatsheet_attributed.pdf)
We found that you should be specific within a parameter. 1 test per parameter.

2. The RSpec Documentation is found at "http://rspec.info/documentation/"

3. eq/eql/equal

True/False/nil
 be_true # true-ish
 be_false # false-ish
 be_nil # is nil

Receive counts
 double.should_receive(:foo).once .twice .exactly(n).times
 .any_number_of_times
 .at_least(:once)
 .at_least(:twice)
 .at_least(n).times

4.  https://teamtreehouse.com/library/q:rspec
=end

#### Release 3 ####
require_relative 'todo_list'

describe TodoList do
  let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }

  it "stores the list items given on initialization" do
    expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  end

  it "adds an item to the list" do
    list.add_item("mop")
    expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  it "deletes an item" do
    list.delete_item("do the dishes")
    expect(list.get_items).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do
    expect(list.get_item(0)).to eq "do the dishes"
  end
end