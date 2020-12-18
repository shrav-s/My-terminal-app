require_relative('user_class')
class UserOps

    def initialize(filepath)
        @file_path = filepath
    end

 def check_file()    
     if( !(File.file?(@file_path) && !File.zero?(@file_path)))
      File.open(@file_path,"w") 
      File.write(@file_path, [])
     end
  end

  def read_file()
    if (File.exist?(@file_path))
        file = File.read(@file_path)
        data_hash_arr = JSON.parse(file)
    else
      data_hash_arr = []
    end
     return data_hash_arr
  end


  def write_to_file(data_arr)
    
    data = File.open(@file_path, "w")
    File.write(@file_path, data_arr.to_json)
    end

    def check_user_exist(username)
        is_user_exist = false
        check_file
        data = read_file
        if data.length > 0
            data.each do |item|
               if (item["name"] == username)
                is_user_exist =true
            break
               end
            end
        end
        return is_user_exist
    end
    
    def get_user(username)
        name=""
        score=0
        data = read_file
        if data.length > 0
            data.each do |item|
               if (item["name"] == username)
                name=item["name"]
                score=item["score"]
            break
                end
            end
        end
        return name,score
    end

    def add_user(username)
       data = read_file
       user_record={ "name" => username, "score" => 0 }
       data.push(user_record)
       write_to_file(data)
    end

end

# niki_user = User.new("abcd", 502)
# niki = UserOps.new("user_database.json")
#  puts niki.check_file
#  data_arr_1= niki.read_file
#  data_arr_1.push(niki_user.user_record)
#  niki.write_to_file(data_arr_1)

#  avii_user = User.new("mmm", 50)
#  avinash = UserOps.new("user_database.json")
#  data_arr_2= avinash.read_file
#  data_arr_2.push(avii_user.user_record)
#  avinash.write_to_file(data_arr_2)

# # test_arr=niki.read_file("user_database.json")
# # puts test_arr[0]
