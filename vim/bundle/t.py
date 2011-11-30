class Test:
  def test(self):
    return "the test"
  def test2(self):
      """docstring for test2"""
      print("Another one")
a = Test().test()
print a
