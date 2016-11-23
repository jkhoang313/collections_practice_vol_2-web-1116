# your code goes here
def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word.start_with?("wa") if word.is_a? String}
end

def remove_non_strings(array)
  array.delete_if {|word| !(word.is_a? String)}
end

def count_elements(array)
  counter = array.uniq
  counter.each_with_index do |element, index|
    count = array.select{|match| match == element}.length
    counter[index][:count] = count
  end
  counter
end

def merge_data(keys, data)
  final = []
  data.each_with_index do |element, index|
    element.each do |name, hash|
      if name == keys[index][:first_name]
        final << keys[index].merge(hash)
      end
    end
  end
  final
end

def find_cool(array)
  cool = []
  array.each_with_index do |person, index|
    person.each do |attribute, value|
      if value == "cool"
        cool << array[index]
      end
    end
  end
  cool
end

def organize_schools(hash)
  organized = {}
  hash.each do |school_name, location_hash|
    location_hash.each do |name, value|
      if organized[value] == nil
        organized[value] = [school_name]
      else
        organized[value] << school_name
      end
    end
  end
  organized
end
