proc error_proc { errorMsg } { 
    puts "Error occurred: $errorMsg" 
} 
proc my_proc {} { 
    # Some code that might cause an error 
    puts "Before potential error" 
    catch { expr { 1 / 0 } } error_info 
    if {$error_info != ""} { 
        error_proc $error_info 
    } 
    puts "After potential error" 
} 
my_proc