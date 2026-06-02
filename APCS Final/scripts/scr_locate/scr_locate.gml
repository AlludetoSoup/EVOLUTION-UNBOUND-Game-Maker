function locate(obj, String, value, String2="", value2=0,self_=self, min_ = 1000000000, val=""){
	with obj {
		if value = variable_instance_get(self, String) {
			if point_distance(self_.x,self_.y,self.x,self.y) < min_ {
				val = self
				min_ = point_distance(self_.x,self_.y,self.x,self.y)
				
			}
		}
		else {
			}
	}
	
	return(val)
}