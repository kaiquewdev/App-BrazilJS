# Default
coffee -c -o ./Resources/lib/ ./Resources/lib/*.coffee
coffee -c -o ./Resources/ui/ ./Resources/ui/*.coffee
coffee -c -o ./Resources/ ./Resources/*.coffee

# Android
coffee -c -o ./Resources/android/ ./Resources/android/*.coffee
coffee -c -o ./Resources/android/ui/ ./Resources/android/ui/*.coffee

# iPhone
coffee -c -o ./Resources/iphone/ ./Resources/iphone/*.coffee
coffee -c -o ./Resources/iphone/ui/ ./Resources/iphone/ui/*.coffee

make run
