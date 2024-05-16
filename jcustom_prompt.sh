# ~/bin/custom_prompt.sh

# Custom Prompt WITH COLORS (NEEDS EXTRA FUNCTIONS APPARENTLY, TO WORK)

# Function to generate color codes
function color_code() {
  echo "%{$(tput $1 $2)%}"
}

# Reset
Color_Off=$(color_code sgr0)

# Regular Colors
Black=$(color_code setaf 0)
Red=$(color_code setaf 1)
Green=$(color_code setaf 2)
Yellow=$(color_code setaf 3)
Blue=$(color_code setaf 4)
Purple=$(color_code setaf 5)
Cyan=$(color_code setaf 6)
White=$(color_code setaf 7)

# Function to truncate the current working directory to a maximum length
function custom_prompt_path() {
  local full_path="$1"
  local max_length=15
  if [[ ${#full_path} -gt $max_length ]]; then
    echo "...${full_path: -$max_length}"
  else
    echo "$full_path"
  fi
}

# Set the prompt dynamically
#   SYMBOLS -->  %n username,  %m hostname,  %~ current working directory
function set_custom_prompt() {
  local truncated_path=$(custom_prompt_path "$PWD")
  PROMPT="${Blue}%n${Purple}:${Green}${truncated_path}${Purple}$ ${Color_Off} "
}

# Register the precmd function to set the prompt before each prompt is displayed
precmd_functions+=(set_custom_prompt)
