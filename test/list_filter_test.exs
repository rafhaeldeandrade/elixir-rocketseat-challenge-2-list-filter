defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "ListFilter.call/1" do
    test "should return the correct number of odd numbers from an array of strings" do
      list1 = ["1", "3", "6", "43", "banana", "6", "abc"]
      list2 = ["1", "3", "5", "7", "9"]
      list3 = ["2", "org", "6"]

      response1 = ListFilter.call(list1)
      response2 = ListFilter.call(list2)
      response3 = ListFilter.call(list3)

      expect_response1 = 3
      expect_response2 = 5
      expect_response3 = 0

      assert response1 == expect_response1
      assert response2 == expect_response2
      assert response3 == expect_response3
    end
  end
end
