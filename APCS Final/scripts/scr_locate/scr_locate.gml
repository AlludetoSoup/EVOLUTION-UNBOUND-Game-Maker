function locate(obj, String, value,self_, min_, val){
	min_ = 1000000000
	val = ""
	with obj {
		if value = variable_instance_get(self, String) {
			show_debug_message("YAYAYAYAYAYAYAYAYAYAYAYAYAY")
			if point_distance(self_.x,self_.y,self.x,self.y) < min_ {
				val = self
				min_ = point_distance(self_.x,self_.y,self.x,self.y)
				
			}
		}
		else {show_debug_message("bum")}
	}
	return(val)
}