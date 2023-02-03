output "content-from-stringFile" {
  value = local_file.stringFile.content
  
}


output "filename-from-stringFile"{
  value = local_file.stringFile.filename
}

