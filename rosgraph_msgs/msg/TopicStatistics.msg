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

# current traffic on this connection, in Bytes/s
float32 traffic

# mean/variance/max period between two messages
float32 period_mean
float32 period_variance
float32 period_max

# mean/variance/max delay between header.stamp of the
# message and "now". NaN if the message does not have a
# "header" field.
float32 stamp_delay_mean
float32 stamp_delay_variance
float32 stamp_delay_max
