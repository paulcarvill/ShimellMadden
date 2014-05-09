cookbook_path [ "site-cookbooks", "cookbooks" ]
data_bag_path "data_bags"
encrypted_data_bag_secret "/Users/paulca/encrypted_data_bag_secret"
knife[:secret_file] = "/Users/paulca/encrypted_data_bag_secret"
knife[:data_bag_path] = "data_bags"