class Dessert
  attr_accessor :name, :calories

  def initialize (name=nil, calories=nil)
    @name = name
    @calories = calories
  end

  def changeName(newName)
    @name = newName
  end

  def getName
    @name
  end

  def changeCalories(newCalories)
    @calories = newCalories
  end

  def getCalories
    @calories
  end

  def healthy?
    if calories != nil
      if calories <= 200
        return true
      else
        return false
      end
    end
    return puts "Not enough information"
  end

  def delicious?
    if @flavor == "black licorice"
      return false
    else
      return true
    end
  end

  def to_s
    if @name != nil and @calories != nil
    "#{@name} have #{@calories} calories."
    else
    "Not enough information"
    end
  end
end

class JellyBean < Dessert
  def initialize (name=nil, calories=nil,flavor=nil)
    super(name,calories)
    @flavor = flavor
  end
  def setFlavor(newFlavor)
    @flavor = newFlavor
  end
  def getFlavor
    @flavor
  end
end


des1 = Dessert.new()
des1.changeName("Cookies")
puts (des1.healthy?.to_s)
puts des1
des1.changeCalories(200)
des1 = JellyBean.new("Gummy Bear", 500)
des1.setFlavor("black licorice")
puts des1
puts (des1.delicious?.to_s)
puts (des1.getFlavor)
