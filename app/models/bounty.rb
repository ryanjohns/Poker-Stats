class Bounty < ActiveRecord::Base
  
  validates_presence_of :bitch_id, :pwner_id
  
  test
  
  def pwner
    Player.find_by_id(self.pwner_id)
  end
  
  def bitch
    Player.find_by_id(self.bitch_id)
  end
  
  def pwner=(player)
    if !player.is_a? Player
      return false
    end
    self.pwner_id = player.id
  end
  
  def bitch=(player)
    if !player.is_a? Player
      return false
    end
    self.bitch_id = player.id
  end
  
end
