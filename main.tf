# Name - Amarjot Singh
# ID - CEQ508


# ASSIGNMENT 1



# Use of Locals

resource "local_file" "file1" {
  content  = local.content_fr_files
  filename = "MyIntro.txt"
}


#Use of Random id

resource "local_file" "file2" {
  content  = "This is file2."
  filename = "${random_id.random-file-name.hex}"
}


locals {
  content_fr_files = "Hello Everyone, Amar this side"

}


resource "random_id" "random-file-name" {

  byte_length = 8
}

#use of string variable

resource "local_file" "stringFile" {
  content = var.string
  filename = "FullName.txt"
  
}

#use of number variable

resource "local_file" "NumberFile" {
  content = var.number
  filename = "EmpId.txt"
  
}

#use of bool

resource "local_file" "BoolFile" {
  content = var.bool
  filename = "bool.txt"
  
}

#use of map

resource "local_file" "MapFile" {
  content = "${var.map["Employee_Name"]} \n ${var.map["content"]}" 
  filename = "Details.txt"
}


#use of list

resource "local_file" "ListFile" {
  content = "${var.list[0]} ${var.list[1]}" 
  filename = "FavorateColor.txt"
}

#use of object

resource "local_file" "ObjectFile" {
  content = "${var.object["Location"]} ${var.object["Phase"]}" 
  filename = "OfficeAddress.txt"
}
