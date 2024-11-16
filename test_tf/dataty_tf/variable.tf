variable "numbervar" {
  default = 12
  type    = number
}

variable "stringvar" {
  default = "roshan123.txt"
  type    = string
}

variable "boolvar" {
  default = true
  type    = bool
}

variable "anyvar" {
  default = "ros12.txt"
  type    = any
}

variable "listvar" {
  default = ["roshan",345,true]
  type    = list
}

variable "listvar1" {
  default = ["roshan","zammer","km"]
  type    = list(string)
}

variable "mapvar" {
  type    = map(string)
  default = {
          name= "roshan@a.com"
          id= "123"
          phenomenun= "9876543"
        }
  
}

variable "tuplevar" {
  default = ["roshan",345,["r",2]]
  type    = tuple([string,number,list(any)])
}

variable "objectvar" {
type = object({
  id = number
  name = string
  address = list(string)
})
	
default = {
     id = "1"
   name = "roshan"
 address = ["maincircle","clk"] 
}
}

