Book.delete_all
Recipe.delete_all
Ingredient.delete_all

b1 = Book.create(:title =>'The Great British Cookbook', :cuisine =>'British', :chef => 'Nigella Lawson', :image =>'http://4.bp.blogspot.com/_dvfe5CwgnEQ/TLldptL5VgI/AAAAAAAAAQA/6AyD_sBohAQ/s1600/IMG_0214.jpg')

r1 = Recipe.create(:name =>'Traditional English Breakfast', :course =>'Main', :cooktime =>'15', :servingtime =>'1', :instructions =>'fry everything', :image =>'http://4.bp.blogspot.com/_0pzwKzvSMbo/TCRbOtglDzI/AAAAAAAABIo/uK0joaDehtk/s1600/english-breakfast-blackpudding.jpg')
r2 = Recipe.create(:name =>'Scone', :course =>'Dessert', :cooktime =>'20', :servingtime =>'1', :instructions =>'bake', :image =>'http://upload.wikimedia.org/wikipedia/commons/c/c3/Scones_Jam_Cream.jpg')
r3 = Recipe.create(:name =>'Bangers and Mash', :course =>'Main', :cooktime =>'30', :servingtime =>'1', :instructions =>'cook well', :image =>'http://1.bp.blogspot.com/_LANuzRARDf4/TOVgMXKEwsI/AAAAAAAAAX0/CJZVr2hJ8sU/s1600/bangersnmash.jpg')

i1 = Ingredient.create(:name =>'bangers', :measurement=>'1', :cost=>'2', :image => 'http://leitesculinaria.com/wp-content/uploads/2012/09/bangers-and-mash.jpg')
i2 = Ingredient.create(:name =>'flour', :measurement=>'3', :cost=>'4', :image => 'http://www.kingarthurflour.com/item-img/4669_07_10_2012__17_59_57_456')
i3 = Ingredient.create(:name =>'potatoes', :measurement=>'4', :cost=>'5', :image => 'http://0.tqn.com/d/nutrition/1/0/S/A/potatoessx.jpg')
i4 = Ingredient.create(:name =>'butter', :measurement=>'4', :cost=>'8', :image => 'http://upload.wikimedia.org/wikipedia/commons/4/45/NCI_butter.jpg')
i5 = Ingredient.create(:name =>'sugar', :measurement=>'3 cups', :cost=>'7', :image => 'http://nativemax.com/wp-content/uploads/2012/11/SUGAR.jpg')
i6 = Ingredient.create(:name =>'baked beans', :measurement=>'3', :cost=>'5', :image => 'http://kitchenscoop.com/assets/uploads/recipes/baked-beans-lrg.jpg')

b1.recipes = [r1,r2]
b1.recipes << r3

r1.ingredients = [i1, i2, i4]
r2.ingredients = [i1, i2, i4, i5, i6]
r3.ingredients = [i2, i3, i4]
