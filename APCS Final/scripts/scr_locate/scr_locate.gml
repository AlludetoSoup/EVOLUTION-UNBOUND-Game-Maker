function locate(obj, String, value, String2="", value2=0,String3="",value3=0,self_=self, min_ = 1000000000, val=""){
	
	if String2="" and String3=""{with obj{
		if value = variable_instance_get(self, String) {
			if point_distance(self_.x,self_.y,self.x,self.y) < min_ {
				val = self
				min_ = point_distance(self_.x,self_.y,self.x,self.y)
			}
		}
	}}else if String3=""{with obj{
		if value = variable_instance_get(self, String) and value2 = variable_instance_get(self, String2) {
			if point_distance(self_.x,self_.y,self.x,self.y) < min_ {
				val = self
				min_ = point_distance(self_.x,self_.y,self.x,self.y)
			}
		}
		
	}}else{with obj{
		if value = variable_instance_get(self, String) and value2 = variable_instance_get(self, String2) and value3 = variable_instance_get(self, String3) {
			if point_distance(self_.x,self_.y,self.x,self.y) < min_ {
				val = self
				min_ = point_distance(self_.x,self_.y,self.x,self.y)
			}
		}
	
	}}
	return(val)
}