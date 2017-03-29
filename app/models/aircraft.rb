class Aircraft < ActiveRecord::Base
  ENGINETYPE = {'P'=>'Piston', 'T'=>'Turboprop', 'J'=>'Jet'}
  WEIGHTCLASS = {'S'=>'Small', 'S+'=>'Small Plus', 'L'=>'Large', 'H'=>'Heavy', 'J'=>'Jumbo'}

  def eType
    ENGINETYPE.has_key?(self.engType) ? ENGINETYPE[self.engType] : 'Unknown'
  end

  def wClass
    WEIGHTCLASS.has_key?(self.weightClass) ? WEIGHTCLASS[self.weightClass] : 'Unknown'
  end
end
