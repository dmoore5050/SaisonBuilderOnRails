class RecipeIngredient < ActiveRecord::Base
  attr_accessible :usage, :quantity, :duration, :ingredient_id, :recipe_id

  belongs_to :recipe
  belongs_to :ingredient


  def render_line_item(type, ingr_record)
    measure = quantity_unit type
    usage_indicator = self.usage == 'boil' ? '@ ' : nil
    line_item = "#{self.quantity} #{measure} #{ingr_record.name.titleize}".ljust(28)
    line_item += add_usage self                     unless self.usage.nil?
    line_item += add_duration self, usage_indicator unless self.duration.nil?
    line_item += add_yeast_codes ingr_record        unless ingr_record.yeast_code_wl.nil?
    line_item
  end

  def add_usage(ingredient)
    "Add during: #{ingredient.usage.capitalize}"
  end

  def add_duration(ingredient, usage_indicator)
    ", #{usage_indicator}#{ingredient.duration}"
  end

  def add_yeast_codes(record)
    yeast_codes =  ". Mfg. code(s): White Labs WLP#{record.yeast_code_wl}"
    yeast_codes += ", Wyeast #{record.yeast_code_wyeast}" unless record.yeast_code_wyeast.nil?
    yeast_codes
  end

  def quantity_unit(type)
    case type
    when 'spice'     then 'oz'
    when 'hop'       then 'oz'
    when 'botanical' then 'oz'
    when 'yeast'     then 'pkg'
    else 'lbs'
    end
  end

end
