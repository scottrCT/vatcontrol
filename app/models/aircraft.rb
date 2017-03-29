class Aircraft < ActiveRecord::Base
  ENGINETYPE = {'P'=>'Piston', 'T'=>'Turboprop', 'J'=>'Jet'}
  WEIGHTCLASS = {'S'=>'Small', 'S+'=>'Small Plus', 'L'=>'Large', 'H'=>'Heavy', 'J'=>'Super'}

  def eType
    ENGINETYPE.has_key?(self.engType) ? ENGINETYPE[self.engType] : 'Unknown'
  end

  def wClass
    WEIGHTCLASS.has_key?(self.weightClass) ? WEIGHTCLASS[self.weightClass] : 'Unknown'
  end

  def srsdep
     Srs.where('lead = ? or trail = ?', srs, srs).all
  end

  def wakedep
    wtCat = (code.include? 'B75') ? 'B' : weightClass
    WakeDeparture.where('lead = ? or trail = ?', wtCat, wtCat).all
  end

  def wakeenr
    wtCat = (code.include? 'B75') ? 'B' : weightClass
    WakeEnroute.where('lead = ? or trail = ?', wtCat, wtCat).all
  end

end
