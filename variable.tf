
#default variables

variable "string" {

    type = string
    description = "Enter filename"
    default = "Amarfile.txt"
  
}

variable "number" {
    type = number
    description = "Enter your Emp ID"
    default = 508
}

variable "bool" {

    type = bool
    description = "Enter value True / False"
    default = true
  
}

variable "map" {
  

  type = map(string)

}

variable "list" {

    type = list(string)
  
}
  

variable "object" {

    type = object({Location = string,
    Phase = number})
    
  
}