# name of the topic
string topic

# node id of the publisher
string node_pub

# node id of the subscriber
string node_sub

# the statistics apply to this time window
time window_start
time window_stop

# numbers of messages dropped during the window
int32 dropped_msgs

# traffic during the window, in bytes
int32 traffic

# mean/stddev/max period between two messages
duration period_mean
duration period_stddev
duration period_max

# mean/stddev/max delay between header.stamp of the
# message and "now". NaN if the message does not have a
# "header" field.
duration stamp_delay_mean
duration stamp_delay_stddev
duration stamp_delay_max
