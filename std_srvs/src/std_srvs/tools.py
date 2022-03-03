import rospy
from std_srvs.srv import SetBool, SetBoolResponse
from rospy.impl.tcpros_base import DEFAULT_BUFF_SIZE

class ToggleService(rospy.Service):

    def __init__(self, name, enable_handler, disable_handler,
                 buff_size=DEFAULT_BUFF_SIZE, error_handler=None):
        super(ToggleService, self).__init__(name, SetBool, self.toggle,
                                            buff_size=buff_size, error_handler=error_handler)
        self.enable_handler = enable_handler
        self.disable_handler = disable_handler

    def toggle(self, req):
        if req.data:
            success, message = self.enable_handler()
        else:
            success, message = self.disable_handler()
        return SetBoolResponse(success=success, message=message)
