Pod::Spec.new do |s|

# 1
s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "TBTextViewWithCharLimit"
s.summary = "TBTextViewWithCharLimit provide to developers a text view with char limit and word count."
s.requires_arc = true

# 2
s.version = "0.1.0"

# 3
s.license = { :type => "MIT", :file => "LICENSE" }

# 4 - Replace with your name and e-mail address
s.author = { "Thiago Bernardes" => "tmb0710@gmail.com" }

# For example,
# s.author = { "Joshua Greene" => "jrg.developer@gmail.com" }

s.screenshots  = ["https://raw.githubusercontent.com/thiagotmb/TBTextViewWithCharLimit/master/Screenshots/0.png", "https://raw.githubusercontent.com/thiagotmb/TBTextViewWithCharLimit/master/Screenshots/1.png" , "https://raw.githubusercontent.com/thiagotmb/TBTextViewWithCharLimit/master/Screenshots/2.png"]


# 5 - Replace this URL with your own Github page's URL (from the address bar)
s.homepage = "https://github.com/thiagotmb/TBTextViewWithCharLimit"

# For example,
# s.homepage = "https://github.com/JRG-Developer/RWPickFlavor"


# 6 - Replace this URL with your own Git URL from "Quick Setup"
s.source = { :git => "https://github.com/thiagotmb/TBTextViewWithCharLimit.git", :tag => "#{s.version}"}

# For example,
# s.source = { :git => "https://github.com/JRG-Developer/RWPickFlavor.git", :tag => "#{s.version}"}

# 8
s.source_files = "TBTextViewWithCharLimit/*"

# 9
end
