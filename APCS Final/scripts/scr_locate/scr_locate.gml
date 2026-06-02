function locate(obj, String, value, String2="", value2=0,String3="",value3=0,self_=self, min_ = 1000000000, val=""){
	with obj {
		if value = variable_instance_get(self, String) {
			if String2!=""{if value2 = variable_instance_get(self, String2) {
				if String3!=""{if value3 = variable_instance_get(self, String3) {
					if point_distance(self_.x,self_.y,self.x,self.y) < min_ {
						val = self
						min_ = point_distance(self_.x,self_.y,self.x,self.y)
					}
				}}
			}}
		}
	}	
	return(val)
}