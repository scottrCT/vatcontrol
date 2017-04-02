class Aircraft < ActiveRecord::Base
  ENGINETYPE = {'P'=>'Piston', 'T'=>'Turboprop', 'J'=>'Jet'}
  WEIGHTCLASS = {'S'=>'Small', 'S+'=>'Small Plus', 'L'=>'Large', 'H'=>'Heavy', 'J'=>'Super', 'B' => 'Large'}

  def eType
    ENGINETYPE.has_key?(self.engType) ? ENGINETYPE[self.engType] : 'Unknown'
  end

  def wClass
    WEIGHTCLASS.has_key?(self.weightClass) ? WEIGHTCLASS[self.weightClass] : 'Unknown'
  end

  def srsdep
     Srs.where('lead = ? or trail = ? or lead = ? or trail = ?', srs, srs, 'x', 'x').all
  end

  def wakedep
    wtCat = (code.include? 'B75') ? 'B' : weightClass
    WakeDeparture.where('lead = ? or trail = ? or trail = ?', wtCat, wtCat, 'A').all
  end

  def wakeenr
    wtCat = (code.include? 'B75') ? 'B' : weightClass
    WakeEnroute.where('lead = ? or trail = ? or trail = ?', wtCat, wtCat, 'A').all
  end

  def self.wakeType(id)
    (id == 'B') ? 'B757' : (id == 'A' ? 'Any' : id)
  end

  def self.srsType(id)
    (id == 'x') ? 'Any' : 'Cat '+id
  end
end
