proc error_proc {} { puts "Error occurred!" } 
proc my_proc {} { 
    # Some code that might cause an error 
    puts "Before potential error" 
    catch { expr { 1 / 0 } } error_info 
    if {$error_info != ""} { 
        error_proc 
    } 
    puts "After potential error" 
} 
my_proc