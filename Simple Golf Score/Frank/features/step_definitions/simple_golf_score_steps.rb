When /^I touch the Plus button/ do
    touch("view:'UIButton' marked:'Increment'")
end

Then /^the (stroke display|hole number) should read "(.*)"/ do |control,num|
    if control == "stroke display"
        frankly_map("view:'UILabel' marked:'StrokeDisplayAccessibility'","text").should == [num]
    else 
        frankly_map("view:'UILabel' marked:'HoleDisplayAccessibility'","text").should == [num]
    end
end

When /^I touch the Next Hole button/ do
    touch("view:'UIButtonLabel' marked:'Next Hole'")
end

When /^I touch the Round Score button/ do
    touch("view:'UISegment' marked:'Round Score'")
end

When /^I touch the Hole Score button/ do
    touch("view:'UISegment' marked:'Hole Score'")
end