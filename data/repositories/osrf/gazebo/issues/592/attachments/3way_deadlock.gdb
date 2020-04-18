(gdb) thread apply all bt

Thread 31 (Thread 0x7f8b7d218700 (LWP 26874)):
#0  pthread_cond_wait@@GLIBC_2.3.2 () at ../nptl/sysdeps/unix/sysv/linux/x86_64/pthread_cond_wait.S:162
#1  0x00007f8b912b2efd in boost::condition_variable::wait (this=0x7f8b91564750, m=...)
    at /usr/include/boost/thread/pthread/condition_variable.hpp:56
#2  0x00007f8b912d40d6 in gazebo::common::ModelDatabase::UpdateModelCache (this=0x7f8b915646e0)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/common/ModelDatabase.cc:249
#3  0x00007f8b912e1e03 in boost::_mfi::mf0<void, gazebo::common::ModelDatabase>::operator() (this=0xf73c78, p=0x7f8b915646e0)
    at /usr/include/boost/bind/mem_fn_template.hpp:49
#4  0x00007f8b912e15e2 in boost::_bi::list1<boost::_bi::value<gazebo::common::ModelDatabase*> >::operator()<boost::_mfi::mf0<void, gazebo::common::ModelDatabase>, boost::_bi::list0> (this=0xf73c88, f=..., a=...) at /usr/include/boost/bind/bind.hpp:253
#5  0x00007f8b912e1295 in boost::_bi::bind_t<void, boost::_mfi::mf0<void, gazebo::common::ModelDatabase>, boost::_bi::list1<boost::_bi::value<gazebo::common::ModelDatabase*> > >::operator() (this=0xf73c78) at /usr/include/boost/bind/bind_template.hpp:20
#6  0x00007f8b912e06e6 in boost::detail::thread_data<boost::_bi::bind_t<void, boost::_mfi::mf0<void, gazebo::common::ModelDatabase>, boost::_bi::list1<boost::_bi::value<gazebo::common::ModelDatabase*> > > >::run (this=0xf73af0) at /usr/include/boost/thread/detail/thread.hpp:62
#7  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#8  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b7d218700) at pthread_create.c:308
#9  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#10 0x0000000000000000 in ?? ()

Thread 30 (Thread 0x7f8b73d5f700 (LWP 26975)):
#0  0x00007f8b8e420363 in epoll_wait () at ../sysdeps/unix/syscall-template.S:82
#1  0x00007f8b90b4357a in boost::asio::detail::epoll_reactor::run (this=0x1025940, block=true, ops=...)
    at /usr/include/boost/asio/detail/impl/epoll_reactor.ipp:366
#2  0x00007f8b90b448df in boost::asio::detail::task_io_service::do_run_one (this=0x1025510, lock=..., this_thread=..., private_op_queue=..., 
    ec=...) at /usr/include/boost/asio/detail/impl/task_io_service.ipp:353
#3  0x00007f8b90b443ff in boost::asio::detail::task_io_service::run (this=0x1025510, ec=...)
    at /usr/include/boost/asio/detail/impl/task_io_service.ipp:146
#4  0x00007f8b90b44d55 in boost::asio::io_service::run (this=0x10254f0) at /usr/include/boost/asio/impl/io_service.ipp:59
#5  0x00007f8b90b712bf in boost::_mfi::mf0<unsigned long, boost::asio::io_service>::operator() (this=0x1025788, p=0x10254f0)
    at /usr/include/boost/bind/mem_fn_template.hpp:49
#6  0x00007f8b90b71223 in boost::_bi::list1<boost::_bi::value<boost::asio::io_service*> >::operator()<unsigned long, boost::_mfi::mf0<unsigned long, boost::asio::io_service>, boost::_bi::list0> (this=0x1025798, f=..., a=...) at /usr/include/boost/bind/bind.hpp:243
#7  0x00007f8b90b711c7 in boost::_bi::bind_t<unsigned long, boost::_mfi::mf0<unsigned long, boost::asio::io_service>, boost::_bi::list1<boost::_bi::value<boost::asio::io_service*> > >::operator() (this=0x1025788) at /usr/include/boost/bind/bind_template.hpp:20
#8  0x00007f8b90b7118c in boost::detail::thread_data<boost::_bi::bind_t<unsigned long, boost::_mfi::mf0<unsigned long, boost::asio::io_service>, boost::_bi::list1<boost::_bi::value<boost::asio::io_service*> > > >::run (this=0x1025600) at /usr/include/boost/thread/detail/thread.hpp:62
#9  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#10 0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b73d5f700) at pthread_create.c:308
#11 0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#12 0x0000000000000000 in ?? ()

Thread 29 (Thread 0x7f8b7355e700 (LWP 26976)):
#0  0x00007f8b8fc1252d in nanosleep () at ../sysdeps/unix/syscall-template.S:82
#1  0x00007f8b912f7eca in gazebo::common::Time::Sleep (_time=...)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/common/Time.cc:171
#2  0x00007f8b912f80cf in gazebo::common::Time::MSleep (_ms=10)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/common/Time.cc:189
#3  0x000000000048a5cf in gazebo::Master::Run (this=0x1024fc0)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/Master.cc:320
#4  0x000000000049868d in boost::_mfi::mf0<void, gazebo::Master>::operator() (this=0x1026008, p=0x1024fc0)
    at /usr/include/boost/bind/mem_fn_template.hpp:49
#5  0x00000000004985f0 in boost::_bi::list1<boost::_bi::value<gazebo::Master*> >::operator()<boost::_mfi::mf0<void, gazebo::Master>, boost::_bi::list0> (this=0x1026018, f=..., a=...) at /usr/include/boost/bind/bind.hpp:253
#6  0x0000000000498595 in boost::_bi::bind_t<void, boost::_mfi::mf0<void, gazebo::Master>, boost::_bi::list1<boost::_bi::value<gazebo::Master*> > >::operator() (this=0x1026008) at /usr/include/boost/bind/bind_template.hpp:20
#7  0x000000000049855a in boost::detail::thread_data<boost::_bi::bind_t<void, boost::_mfi::mf0<void, gazebo::Master>, boost::_bi::list1<boost::_bi::value<gazebo::Master*> > > >::run (this=0x1025e80) at /usr/include/boost/thread/detail/thread.hpp:62
#8  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#9  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b7355e700) at pthread_create.c:308
#10 0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#11 0x0000000000000000 in ?? ()

---Type <return> to continue, or q <return> to quit---
Thread 28 (Thread 0x7f8b72d5d700 (LWP 26981)):
#0  0x00007f8b8e414313 in __GI___poll (fds=<optimized out>, nfds=<optimized out>, timeout=<optimized out>)
    at ../sysdeps/unix/sysv/linux/poll.c:87
#1  0x00007f8b7479ef18 in ros::poll_sockets(pollfd*, unsigned long, int) () from /opt/ros/groovy/lib/libroscpp.so
#2  0x00007f8b7482e05d in ros::PollSet::update(int) () from /opt/ros/groovy/lib/libroscpp.so
#3  0x00007f8b747b032a in ros::PollManager::threadFunc() () from /opt/ros/groovy/lib/libroscpp.so
#4  0x00007f8b747b20a5 in boost::_mfi::mf0<void, ros::PollManager>::operator()(ros::PollManager*) const () from /opt/ros/groovy/lib/libroscpp.so
#5  0x00007f8b747b2008 in void boost::_bi::list1<boost::_bi::value<ros::PollManager*> >::operator()<boost::_mfi::mf0<void, ros::PollManager>, boost::_bi::list0>(boost::_bi::type<void>, boost::_mfi::mf0<void, ros::PollManager>&, boost::_bi::list0&, int) ()
   from /opt/ros/groovy/lib/libroscpp.so
#6  0x00007f8b747b1fad in boost::_bi::bind_t<void, boost::_mfi::mf0<void, ros::PollManager>, boost::_bi::list1<boost::_bi::value<ros::PollManager*> > >::operator()() () from /opt/ros/groovy/lib/libroscpp.so
#7  0x00007f8b747b1eda in boost::detail::thread_data<boost::_bi::bind_t<void, boost::_mfi::mf0<void, ros::PollManager>, boost::_bi::list1<boost::_bi::value<ros::PollManager*> > > >::run() () from /opt/ros/groovy/lib/libroscpp.so
#8  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#9  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b72d5d700) at pthread_create.c:308
#10 0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#11 0x0000000000000000 in ?? ()

Thread 27 (Thread 0x7f8b7255c700 (LWP 26983)):
#0  0x00007f8b8e419033 in select () at ../sysdeps/unix/syscall-template.S:82
#1  0x00007f8b73f95880 in XmlRpc::XmlRpcDispatch::work(double) () from /opt/ros/groovy/lib/libxmlrpcpp.so
#2  0x00007f8b73f970f2 in XmlRpc::XmlRpcServer::work(double) () from /opt/ros/groovy/lib/libxmlrpcpp.so
#3  0x00007f8b747902da in ros::XMLRPCManager::serverThreadFunc() () from /opt/ros/groovy/lib/libroscpp.so
#4  0x00007f8b74796921 in boost::_mfi::mf0<void, ros::XMLRPCManager>::operator()(ros::XMLRPCManager*) const ()
   from /opt/ros/groovy/lib/libroscpp.so
#5  0x00007f8b74796884 in void boost::_bi::list1<boost::_bi::value<ros::XMLRPCManager*> >::operator()<boost::_mfi::mf0<void, ros::XMLRPCManager>, boost::_bi::list0>(boost::_bi::type<void>, boost::_mfi::mf0<void, ros::XMLRPCManager>&, boost::_bi::list0&, int) ()
   from /opt/ros/groovy/lib/libroscpp.so
#6  0x00007f8b74796829 in boost::_bi::bind_t<void, boost::_mfi::mf0<void, ros::XMLRPCManager>, boost::_bi::list1<boost::_bi::value<ros::XMLRPCManager*> > >::operator()() () from /opt/ros/groovy/lib/libroscpp.so
#7  0x00007f8b747967bc in boost::detail::thread_data<boost::_bi::bind_t<void, boost::_mfi::mf0<void, ros::XMLRPCManager>, boost::_bi::list1<boost::_bi::value<ros::XMLRPCManager*> > > >::run() () from /opt/ros/groovy/lib/libroscpp.so
#8  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#9  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b7255c700) at pthread_create.c:308
#10 0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#11 0x0000000000000000 in ?? ()

Thread 26 (Thread 0x7f8b71d5b700 (LWP 26984)):
#0  pthread_cond_wait@@GLIBC_2.3.2 () at ../nptl/sysdeps/unix/sysv/linux/x86_64/pthread_cond_wait.S:162
#1  0x00007f8b912b2efd in boost::condition_variable::wait (this=0x102a368, m=...) at /usr/include/boost/thread/pthread/condition_variable.hpp:56
#2  0x00007f8b747fef47 in ros::ROSOutAppender::logThread() () from /opt/ros/groovy/lib/libroscpp.so
#3  0x00007f8b74803725 in boost::_mfi::mf0<void, ros::ROSOutAppender>::operator()(ros::ROSOutAppender*) const ()
   from /opt/ros/groovy/lib/libroscpp.so
#4  0x00007f8b74803688 in void boost::_bi::list1<boost::_bi::value<ros::ROSOutAppender*> >::operator()<boost::_mfi::mf0<void, ros::ROSOutAppender>, boost::_bi::list0>(boost::_bi::type<void>, boost::_mfi::mf0<void, ros::ROSOutAppender>&, boost::_bi::list0&, int) ()
   from /opt/ros/groovy/lib/libroscpp.so
#5  0x00007f8b7480362d in boost::_bi::bind_t<void, boost::_mfi::mf0<void, ros::ROSOutAppender>, boost::_bi::list1<boost::_bi::value<ros::ROSOutAppender*> > >::operator()() () from /opt/ros/groovy/lib/libroscpp.so
#6  0x00007f8b74803466 in boost::detail::thread_data<boost::_bi::bind_t<void, boost::_mfi::mf0<void, ros::ROSOutAppender>, boost::_bi::list1<boost::_bi::value<ros::ROSOutAppender*> > > >::run() () from /opt/ros/groovy/lib/libroscpp.so
#7  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#8  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b71d5b700) at pthread_create.c:308
#9  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#10 0x0000000000000000 in ?? ()

Thread 25 (Thread 0x7f8b7155a700 (LWP 26994)):
#0  pthread_cond_timedwait@@GLIBC_2.3.2 () at ../nptl/sysdeps/unix/sysv/linux/x86_64/pthread_cond_timedwait.S:215
#1  0x00007f8b90b40981 in boost::condition_variable::timed_wait (this=0x1027f98, m=..., wait_until=...)
    at /usr/include/boost/thread/pthread/condition_variable.hpp:74
#2  0x00007f8b747bf554 in bool boost::condition_variable::timed_wait<boost::date_time::subsecond_duration<boost::posix_time::time_duration, 1000000l> >(boost::unique_lock<boost::mutex>&, boost::date_time::subsecond_duration<boost::posix_time::time_duration, 1000000l> const&) ()
   from /opt/ros/groovy/lib/libroscpp.so
---Type <return> to continue, or q <return> to quit---
#3  0x00007f8b747bd787 in ros::CallbackQueue::callAvailable(ros::WallDuration) () from /opt/ros/groovy/lib/libroscpp.so
#4  0x00007f8b74804658 in ros::internalCallbackQueueThreadFunc() () from /opt/ros/groovy/lib/libroscpp.so
#5  0x00007f8b7480ffbd in boost::detail::thread_data<void (*)()>::run() () from /opt/ros/groovy/lib/libroscpp.so
#6  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#7  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b7155a700) at pthread_create.c:308
#8  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#9  0x0000000000000000 in ?? ()

Thread 24 (Thread 0x7f8b70d59700 (LWP 26995)):
#0  __lll_lock_wait () at ../nptl/sysdeps/unix/sysv/linux/x86_64/lowlevellock.S:132
#1  0x00007f8b8fc0d065 in _L_lock_858 () from /lib/x86_64-linux-gnu/libpthread.so.0
#2  0x00007f8b8fc0ceba in __pthread_mutex_lock (mutex=0x1f22670) at pthread_mutex_lock.c:61
#3  0x0000000000473055 in boost::mutex::lock (this=0x1f22670) at /usr/include/boost/thread/pthread/mutex.hpp:59
#4  0x0000000000474f5a in boost::unique_lock<boost::mutex>::lock (this=0x7f8b70d57f90) at /usr/include/boost/thread/locks.hpp:412
#5  0x0000000000474ee5 in boost::unique_lock<boost::mutex>::unique_lock (this=0x7f8b70d57f90, m_=...) at /usr/include/boost/thread/locks.hpp:290

#6  0x00007f8b907907a3 in gazebo::physics::World::GetModel (this=0x20a6cc0, _name=...)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/physics/World.cc:677 loadModelMutex GetModel mark99
#7  0x00007f8b74b7c5fe in gazebo::GazeboRosApiPlugin::spawnAndConform (this=this@entry=0x1063f60, gazebo_model_xml=..., model_name=..., res=...)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/src/gazebo_ros_api_plugin.cpp:2099
#8  0x00007f8b74b80dd5 in gazebo::GazeboRosApiPlugin::spawnGazeboModel (this=this@entry=0x1063f60, req=..., res=...)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/src/gazebo_ros_api_plugin.cpp:554
#9  0x00007f8b74b8197e in gazebo::GazeboRosApiPlugin::spawnURDFModel (this=0x1063f60, req=..., res=...)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/src/gazebo_ros_api_plugin.cpp:472
#10 0x00007f8b74bd9764 in operator() (a1=..., a0=..., this=0x20f80a8) at /usr/include/boost/function/function_template.hpp:760
#11 call (params=..., cb=...) at /opt/ros/groovy/include/ros/service_callback_helper.h:142
#12 ros::ServiceCallbackHelperT<ros::ServiceSpec<gazebo_msgs::SpawnModelRequest_<std::allocator<void> >, gazebo_msgs::SpawnModelResponse_<std::allocator<void> > > >::call (this=0x20f80a0, params=...) at /opt/ros/groovy/include/ros/service_callback_helper.h:200
#13 0x00007f8b7476b010 in ros::ServiceCallback::call() () from /opt/ros/groovy/lib/libroscpp.so
#14 0x00007f8b747bdf0a in ros::CallbackQueue::callOneCB(ros::CallbackQueue::TLS*) () from /opt/ros/groovy/lib/libroscpp.so
#15 0x00007f8b747bd91f in ros::CallbackQueue::callAvailable(ros::WallDuration) () from /opt/ros/groovy/lib/libroscpp.so
#16 0x00007f8b74b7cb27 in gazebo::GazeboRosApiPlugin::gazeboQueueThread (this=0x1063f60)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/src/gazebo_ros_api_plugin.cpp:162
#17 0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#18 0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b70d59700) at pthread_create.c:308
#19 0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#20 0x0000000000000000 in ?? ()

Thread 23 (Thread 0x7f8b5bfff700 (LWP 26996)):
#0  0x00007f8b8fc1252d in nanosleep () at ../sysdeps/unix/syscall-template.S:82
#1  0x00007f8b776a6b19 in ros::ros_wallsleep(unsigned int, unsigned int) () from /opt/ros/groovy/lib/librostime.so
#2  0x00007f8b776a769a in ros::Duration::sleep() const () from /opt/ros/groovy/lib/librostime.so
#3  0x00007f8b74832fe9 in ros::service::waitForService(std::string const&, ros::Duration) () from /opt/ros/groovy/lib/libroscpp.so
#4  0x00007f8b747cc892 in ros::ServiceClient::waitForExistence(ros::Duration) () from /opt/ros/groovy/lib/libroscpp.so
#5  0x00007f8b74b8c0ab in gazebo::GazeboRosApiPlugin::PhysicsReconfigureNode (this=0x1063f60)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/src/gazebo_ros_api_plugin.cpp:1804
#6  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#7  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b5bfff700) at pthread_create.c:308
#8  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#9  0x0000000000000000 in ?? ()

Thread 22 (Thread 0x7f8b5972f700 (LWP 27284)):
#0  pthread_cond_wait@@GLIBC_2.3.2 () at ../nptl/sysdeps/unix/sysv/linux/x86_64/pthread_cond_wait.S:162
#1  0x00007f8b873c03cb in void boost::condition_variable_any::wait<boost::unique_lock<boost::recursive_mutex> >(boost::unique_lock<boost::recursive_mutex>&) () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#2  0x00007f8b873bf4df in Ogre::DefaultWorkQueue::waitForNextRequest() () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#3  0x00007f8b873bf12c in Ogre::DefaultWorkQueue::_threadMain() () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#4  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#5  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b5972f700) at pthread_create.c:308
#6  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#7  0x0000000000000000 in ?? ()

Thread 21 (Thread 0x7f8b58f2e700 (LWP 27286)):
#0  pthread_cond_wait@@GLIBC_2.3.2 () at ../nptl/sysdeps/unix/sysv/linux/x86_64/pthread_cond_wait.S:162
---Type <return> to continue, or q <return> to quit---
#1  0x00007f8b873c03cb in void boost::condition_variable_any::wait<boost::unique_lock<boost::recursive_mutex> >(boost::unique_lock<boost::recursive_mutex>&) () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#2  0x00007f8b873bf4df in Ogre::DefaultWorkQueue::waitForNextRequest() () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#3  0x00007f8b873bf12c in Ogre::DefaultWorkQueue::_threadMain() () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#4  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#5  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b58f2e700) at pthread_create.c:308
#6  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#7  0x0000000000000000 in ?? ()

Thread 20 (Thread 0x7f8b47fff700 (LWP 27287)):
#0  pthread_cond_wait@@GLIBC_2.3.2 () at ../nptl/sysdeps/unix/sysv/linux/x86_64/pthread_cond_wait.S:162
#1  0x00007f8b873c03cb in void boost::condition_variable_any::wait<boost::unique_lock<boost::recursive_mutex> >(boost::unique_lock<boost::recursive_mutex>&) () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#2  0x00007f8b873bf4df in Ogre::DefaultWorkQueue::waitForNextRequest() () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#3  0x00007f8b873bf12c in Ogre::DefaultWorkQueue::_threadMain() () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#4  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#5  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b47fff700) at pthread_create.c:308
#6  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#7  0x0000000000000000 in ?? ()

Thread 19 (Thread 0x7f8b477fe700 (LWP 27288)):
#0  pthread_cond_wait@@GLIBC_2.3.2 () at ../nptl/sysdeps/unix/sysv/linux/x86_64/pthread_cond_wait.S:162
#1  0x00007f8b873c03cb in void boost::condition_variable_any::wait<boost::unique_lock<boost::recursive_mutex> >(boost::unique_lock<boost::recursive_mutex>&) () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#2  0x00007f8b873bf4df in Ogre::DefaultWorkQueue::waitForNextRequest() () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#3  0x00007f8b873bf12c in Ogre::DefaultWorkQueue::_threadMain() () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#4  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#5  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b477fe700) at pthread_create.c:308
#6  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#7  0x0000000000000000 in ?? ()

Thread 18 (Thread 0x7f8b46ffd700 (LWP 27289)):
#0  pthread_cond_wait@@GLIBC_2.3.2 () at ../nptl/sysdeps/unix/sysv/linux/x86_64/pthread_cond_wait.S:162
#1  0x00007f8b873c03cb in void boost::condition_variable_any::wait<boost::unique_lock<boost::recursive_mutex> >(boost::unique_lock<boost::recursive_mutex>&) () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#2  0x00007f8b873bf4df in Ogre::DefaultWorkQueue::waitForNextRequest() () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#3  0x00007f8b873bf12c in Ogre::DefaultWorkQueue::_threadMain() () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#4  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#5  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b46ffd700) at pthread_create.c:308
#6  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#7  0x0000000000000000 in ?? ()

Thread 17 (Thread 0x7f8b467fc700 (LWP 27290)):
#0  pthread_cond_wait@@GLIBC_2.3.2 () at ../nptl/sysdeps/unix/sysv/linux/x86_64/pthread_cond_wait.S:162
#1  0x00007f8b873c03cb in void boost::condition_variable_any::wait<boost::unique_lock<boost::recursive_mutex> >(boost::unique_lock<boost::recursive_mutex>&) () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#2  0x00007f8b873bf4df in Ogre::DefaultWorkQueue::waitForNextRequest() () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#3  0x00007f8b873bf12c in Ogre::DefaultWorkQueue::_threadMain() () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#4  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#5  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b467fc700) at pthread_create.c:308
#6  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#7  0x0000000000000000 in ?? ()

Thread 16 (Thread 0x7f8b45ffb700 (LWP 27291)):
#0  pthread_cond_wait@@GLIBC_2.3.2 () at ../nptl/sysdeps/unix/sysv/linux/x86_64/pthread_cond_wait.S:162
#1  0x00007f8b873c03cb in void boost::condition_variable_any::wait<boost::unique_lock<boost::recursive_mutex> >(boost::unique_lock<boost::recursive_mutex>&) () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#2  0x00007f8b873bf4df in Ogre::DefaultWorkQueue::waitForNextRequest() () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#3  0x00007f8b873bf12c in Ogre::DefaultWorkQueue::_threadMain() () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#4  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#5  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b45ffb700) at pthread_create.c:308
#6  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#7  0x0000000000000000 in ?? ()
---Type <return> to continue, or q <return> to quit---

Thread 15 (Thread 0x7f8b457fa700 (LWP 27292)):
#0  pthread_cond_wait@@GLIBC_2.3.2 () at ../nptl/sysdeps/unix/sysv/linux/x86_64/pthread_cond_wait.S:162
#1  0x00007f8b873c03cb in void boost::condition_variable_any::wait<boost::unique_lock<boost::recursive_mutex> >(boost::unique_lock<boost::recursive_mutex>&) () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#2  0x00007f8b873bf4df in Ogre::DefaultWorkQueue::waitForNextRequest() () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#3  0x00007f8b873bf12c in Ogre::DefaultWorkQueue::_threadMain() () from /usr/lib/x86_64-linux-gnu/libOgreMain.so.1.7.4
#4  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#5  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b457fa700) at pthread_create.c:308
#6  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#7  0x0000000000000000 in ?? ()

Thread 14 (Thread 0x7f8b44ff9700 (LWP 27520)):
#0  0x00007f8b8fc1252d in nanosleep () at ../sysdeps/unix/syscall-template.S:82
#1  0x00007f8b776a6b19 in ros::ros_wallsleep(unsigned int, unsigned int) () from /opt/ros/groovy/lib/librostime.so
#2  0x00007f8b776a769a in ros::Duration::sleep() const () from /opt/ros/groovy/lib/librostime.so
#3  0x00007f8b776a6527 in ros::Rate::sleep() () from /opt/ros/groovy/lib/librostime.so
#4  0x00007f8b74b7869d in gazebo::GazeboRosApiPlugin::spin (this=<optimized out>)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/src/gazebo_ros_api_plugin.cpp:1517
#5  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#6  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b44ff9700) at pthread_create.c:308
#7  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#8  0x0000000000000000 in ?? ()

Thread 13 (Thread 0x7f8b3ffff700 (LWP 27521)):
#0  __lll_lock_wait () at ../nptl/sysdeps/unix/sysv/linux/x86_64/lowlevellock.S:132
#1  0x00007f8b8fc0d080 in _L_lock_903 () from /lib/x86_64-linux-gnu/libpthread.so.0
#2  0x00007f8b8fc0cf19 in __pthread_mutex_lock (mutex=0x1f22740) at pthread_mutex_lock.c:82
#3  0x000000000047317a in boost::recursive_mutex::lock (this=0x1f22740) at /usr/include/boost/thread/pthread/recursive_mutex.hpp:101
#4  0x000000000047788a in boost::unique_lock<boost::recursive_mutex>::lock (this=0x7f8b3fffe900) at /usr/include/boost/thread/locks.hpp:412
#5  0x00000000004754f7 in boost::unique_lock<boost::recursive_mutex>::unique_lock (this=0x7f8b3fffe900, m_=...)
    at /usr/include/boost/thread/locks.hpp:290
#6  0x00007f8b907935a1 in gazebo::physics::World::OnRequest (this=0x20a6cc0, _msg=...)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/physics/World.cc:1080 receiveMutex OnRequest mark99
#7  0x00007f8b907b1842 in boost::_mfi::mf1<void, gazebo::physics::World, boost::shared_ptr<gazebo::msgs::Request const> const&>::operator() (
    this=0x20d88c8, p=0x20a6cc0, a1=...) at /usr/include/boost/bind/mem_fn_template.hpp:165
#8  0x00007f8b907b0590 in boost::_bi::list2<boost::_bi::value<gazebo::physics::World*>, boost::arg<1> >::operator()<boost::_mfi::mf1<void, gazebo::physics::World, boost::shared_ptr<gazebo::msgs::Request const> const&>, boost::_bi::list1<boost::shared_ptr<gazebo::msgs::Request const> const&> > (this=0x20d88d8, f=..., a=...) at /usr/include/boost/bind/bind.hpp:313
#9  0x00007f8b907af686 in boost::_bi::bind_t<void, boost::_mfi::mf1<void, gazebo::physics::World, boost::shared_ptr<gazebo::msgs::Request const> const&>, boost::_bi::list2<boost::_bi::value<gazebo::physics::World*>, boost::arg<1> > >::operator()<boost::shared_ptr<gazebo::msgs::Request const> > (this=0x20d88c8, a1=...) at /usr/include/boost/bind/bind_template.hpp:47
#10 0x00007f8b907ae430 in boost::detail::function::void_function_obj_invoker1<boost::_bi::bind_t<void, boost::_mfi::mf1<void, gazebo::physics::World, boost::shared_ptr<gazebo::msgs::Request const> const&>, boost::_bi::list2<boost::_bi::value<gazebo::physics::World*>, boost::arg<1> > >, void, boost::shared_ptr<gazebo::msgs::Request const> const&>::invoke (function_obj_ptr=..., a0=...)
    at /usr/include/boost/function/function_template.hpp:153
#11 0x00007f8b9077e4c3 in boost::function1<void, boost::shared_ptr<gazebo::msgs::Request const> const&>::operator() (this=0x20d88c0, a0=...)
    at /usr/include/boost/function/function_template.hpp:760
#12 0x00007f8b9077e030 in gazebo::transport::CallbackHelperT<gazebo::msgs::Request>::HandleData (this=0x20d88b0, _newdata=...)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/transport/CallbackHelper.hh:126
#13 0x00007f8b90b71e7b in gazebo::transport::Node::ProcessIncoming (this=0x20db8b0)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/transport/Node.cc:167 incomingMutex mark99
#14 0x00007f8b90b84b16 in gazebo::transport::TopicManager::ProcessNodes (this=0x6c0fa0, _onlyOut=false)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/transport/TopicManager.cc:138
#15 0x00007f8b90b62876 in gazebo::transport::ConnectionManager::RunUpdate (this=0x6c1080)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/transport/ConnectionManager.cc:218
#16 0x00007f8b90b62a0c in gazebo::transport::ConnectionManager::Run (this=0x6c1080)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/transport/ConnectionManager.cc:247
#17 0x00007f8b90b6eaa1 in boost::_mfi::mf0<void, gazebo::transport::ConnectionManager>::operator() (this=0x20bbf38, p=0x6c1080)
    at /usr/include/boost/bind/mem_fn_template.hpp:49
#18 0x00007f8b90b6e13e in boost::_bi::list1<boost::_bi::value<gazebo::transport::ConnectionManager*> >::operator()<boost::_mfi::mf0<void, gazebo::transport::ConnectionManager>, boost::_bi::list0> (this=0x20bbf48, f=..., a=...) at /usr/include/boost/bind/bind.hpp:253
#19 0x00007f8b90b6d6af in boost::_bi::bind_t<void, boost::_mfi::mf0<void, gazebo::transport::ConnectionManager>, boost::_bi::list1<boost::_bi::val---Type <return> to continue, or q <return> to quit---
ue<gazebo::transport::ConnectionManager*> > >::operator() (this=0x20bbf38) at /usr/include/boost/bind/bind_template.hpp:20
#20 0x00007f8b90b9145a in boost::detail::thread_data<boost::_bi::bind_t<void, boost::_mfi::mf0<void, gazebo::transport::ConnectionManager>, boost::_bi::list1<boost::_bi::value<gazebo::transport::ConnectionManager*> > > >::run (this=0x20bbdb0)
    at /usr/include/boost/thread/detail/thread.hpp:62
#21 0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#22 0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b3ffff700) at pthread_create.c:308
#23 0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#24 0x0000000000000000 in ?? ()

Thread 12 (Thread 0x7f8b447f8700 (LWP 27525)):
#0  syscall () at ../sysdeps/unix/sysv/linux/x86_64/syscall.S:39
#1  0x00007f8b8f6fc293 in ?? () from /usr/lib/libtbb.so.2
#2  0x00007f8b8f6fc2c9 in ?? () from /usr/lib/libtbb.so.2
#3  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b447f8700) at pthread_create.c:308
#4  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#5  0x0000000000000000 in ?? ()

Thread 11 (Thread 0x7f8b3f7fe700 (LWP 27526)):
#0  syscall () at ../sysdeps/unix/sysv/linux/x86_64/syscall.S:39
#1  0x00007f8b8f6fc293 in ?? () from /usr/lib/libtbb.so.2
#2  0x00007f8b8f6fc2c9 in ?? () from /usr/lib/libtbb.so.2
#3  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b3f7fe700) at pthread_create.c:308
#4  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#5  0x0000000000000000 in ?? ()

Thread 10 (Thread 0x7f8b3f3fd700 (LWP 27527)):
#0  __lll_lock_wait () at ../nptl/sysdeps/unix/sysv/linux/x86_64/lowlevellock.S:132
#1  0x00007f8b8fc0d080 in _L_lock_903 () from /lib/x86_64-linux-gnu/libpthread.so.0
#2  0x00007f8b8fc0cf19 in __pthread_mutex_lock (mutex=0x20db988) at pthread_mutex_lock.c:82
#3  0x000000000047317a in boost::recursive_mutex::lock (this=0x20db988) at /usr/include/boost/thread/pthread/recursive_mutex.hpp:101
#4  0x000000000047788a in boost::unique_lock<boost::recursive_mutex>::lock (this=0x7f8b3f3fc890) at /usr/include/boost/thread/locks.hpp:412
#5  0x00000000004754f7 in boost::unique_lock<boost::recursive_mutex>::unique_lock (this=0x7f8b3f3fc890, m_=...)
    at /usr/include/boost/thread/locks.hpp:290
#6  0x00007f8b90b71caf in gazebo::transport::Node::HandleData (this=0x20db8b0, _topic=..., _msg=...)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/transport/Node.cc:133 incomingMutex mark99
#7  0x00007f8b90b788b0 in gazebo::transport::Publication::LocalPublish (this=0x20c8850, data=...)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/transport/Publication.cc:237 nodeMutex LocalPublish mark99
#8  0x00007f8b90b7d4d4 in boost::_mfi::mf1<void, gazebo::transport::Publication, std::string const&>::operator() (this=0x7f8b1c005c10, p=
    0x20c8850, a1=...) at /usr/include/boost/bind/mem_fn_template.hpp:165
#9  0x00007f8b90b7d152 in boost::_bi::list2<boost::_bi::value<gazebo::transport::Publication*>, boost::arg<1> >::operator()<boost::_mfi::mf1<void, gazebo::transport::Publication, std::string const&>, boost::_bi::list1<std::string const&> > (this=0x7f8b1c005c20, f=..., a=...)
    at /usr/include/boost/bind/bind.hpp:313
#10 0x00007f8b90b7ce40 in boost::_bi::bind_t<void, boost::_mfi::mf1<void, gazebo::transport::Publication, std::string const&>, boost::_bi::list2<boost::_bi::value<gazebo::transport::Publication*>, boost::arg<1> > >::operator()<std::string> (this=0x7f8b1c005c10, a1=...)
    at /usr/include/boost/bind/bind_template.hpp:47
#11 0x00007f8b90b7c8bd in boost::detail::function::void_function_obj_invoker1<boost::_bi::bind_t<void, boost::_mfi::mf1<void, gazebo::transport::Publication, std::string const&>, boost::_bi::list2<boost::_bi::value<gazebo::transport::Publication*>, boost::arg<1> > >, void, std::string const&>::invoke (function_obj_ptr=..., a0=...) at /usr/include/boost/function/function_template.hpp:153
#12 0x00000000004750c3 in boost::function1<void, std::string const&>::operator() (this=0x7f8b1c005c08, a0=...)
    at /usr/include/boost/function/function_template.hpp:760
#13 0x00007f8b90b7de80 in gazebo::transport::PublicationTransport::OnPublish (this=0x7f8b1c005be0, _data=...)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/transport/PublicationTransport.cc:102 OnPublish mark99
#14 0x00007f8b90b7fbae in boost::_mfi::mf1<void, gazebo::transport::PublicationTransport, std::string const&>::operator() (this=0x7f8b584ebc50, 
    p=0x7f8b1c005be0, a1=...) at /usr/include/boost/bind/mem_fn_template.hpp:165
#15 0x00007f8b90b8096e in boost::_bi::list2<boost::_bi::value<gazebo::transport::PublicationTransport*>, boost::arg<1> >::operator()<boost::_mfi::mf1<void, gazebo::transport::PublicationTransport, std::string const&>, boost::_bi::list1<std::string const&> > (this=0x7f8b584ebc60, f=..., 
    a=...) at /usr/include/boost/bind/bind.hpp:313
#16 0x00007f8b90b8060e in boost::_bi::bind_t<void, boost::_mfi::mf1<void, gazebo::transport::PublicationTransport, std::string const&>, boost::_bi::list2<boost::_bi::value<gazebo::transport::PublicationTransport*>, boost::arg<1> > >::operator()<std::string> (this=0x7f8b584ebc50, a1=...)
    at /usr/include/boost/bind/bind_template.hpp:47
#17 0x00007f8b90b8021b in boost::detail::function::void_function_obj_invoker1<boost::_bi::bind_t<void, boost::_mfi::mf1<void, gazebo::transport::PublicationTransport, std::string const&>, boost::_bi::list2<boost::_bi::value<gazebo::transport::PublicationTransport*>, boost::arg<1> > >, void, std::string const&>::invoke (function_obj_ptr=..., a0=...) at /usr/include/boost/function/function_template.hpp:153
---Type <return> to continue, or q <return> to quit---
#18 0x00000000004750c3 in boost::function1<void, std::string const&>::operator() (this=0x7f8b584ebc48, a0=...)
    at /usr/include/boost/function/function_template.hpp:760
#19 0x000000000048d39b in gazebo::transport::ConnectionReadTask::execute (this=0x7f8b584ebc40)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/transport/Connection.hh:73
#20 0x00007f8b8f703242 in ?? () from /usr/lib/libtbb.so.2
#21 0x00007f8b8f6ff09d in ?? () from /usr/lib/libtbb.so.2
#22 0x00007f8b8f6fe54b in ?? () from /usr/lib/libtbb.so.2
#23 0x00007f8b8f6fc08f in ?? () from /usr/lib/libtbb.so.2
#24 0x00007f8b8f6fc2c9 in ?? () from /usr/lib/libtbb.so.2
#25 0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b3f3fd700) at pthread_create.c:308
#26 0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#27 0x0000000000000000 in ?? ()

Thread 9 (Thread 0x7f8b3effc700 (LWP 27528)):
#0  syscall () at ../sysdeps/unix/sysv/linux/x86_64/syscall.S:39
#1  0x00007f8b8f6fc293 in ?? () from /usr/lib/libtbb.so.2
#2  0x00007f8b8f6fc2c9 in ?? () from /usr/lib/libtbb.so.2
#3  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b3effc700) at pthread_create.c:308
#4  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#5  0x0000000000000000 in ?? ()

Thread 8 (Thread 0x7f8b3ebfb700 (LWP 27530)):
#0  syscall () at ../sysdeps/unix/sysv/linux/x86_64/syscall.S:39
#1  0x00007f8b8f6fc293 in ?? () from /usr/lib/libtbb.so.2
#2  0x00007f8b8f6fc2c9 in ?? () from /usr/lib/libtbb.so.2
#3  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b3ebfb700) at pthread_create.c:308
#4  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#5  0x0000000000000000 in ?? ()

Thread 7 (Thread 0x7f8b3e7fa700 (LWP 27532)):
#0  syscall () at ../sysdeps/unix/sysv/linux/x86_64/syscall.S:39
#1  0x00007f8b8f6fc293 in ?? () from /usr/lib/libtbb.so.2
#2  0x00007f8b8f6fc2c9 in ?? () from /usr/lib/libtbb.so.2
#3  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b3e7fa700) at pthread_create.c:308
#4  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#5  0x0000000000000000 in ?? ()

Thread 6 (Thread 0x7f8b3e3f9700 (LWP 27531)):
#0  syscall () at ../sysdeps/unix/sysv/linux/x86_64/syscall.S:39
#1  0x00007f8b8f6fc293 in ?? () from /usr/lib/libtbb.so.2
#2  0x00007f8b8f6fc2c9 in ?? () from /usr/lib/libtbb.so.2
#3  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b3e3f9700) at pthread_create.c:308
#4  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#5  0x0000000000000000 in ?? ()

Thread 5 (Thread 0x7f8b3dff8700 (LWP 28033)):
#0  pthread_cond_wait@@GLIBC_2.3.2 () at ../nptl/sysdeps/unix/sysv/linux/x86_64/pthread_cond_wait.S:162
#1  0x00007f8b912b2efd in boost::condition_variable::wait (this=0x2297588, m=...) at /usr/include/boost/thread/pthread/condition_variable.hpp:56
#2  0x00007f8b90327bd9 in gazebo::sensors::SensorManager::SensorContainer::RunLoop (this=0x2297530)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/sensors/SensorManager.cc:437
#3  0x00007f8b9032f7ad in boost::_mfi::mf0<void, gazebo::sensors::SensorManager::SensorContainer>::operator() (this=0x22d5f48, p=0x2297530)
    at /usr/include/boost/bind/mem_fn_template.hpp:49
#4  0x00007f8b9032f710 in boost::_bi::list1<boost::_bi::value<gazebo::sensors::SensorManager::SensorContainer*> >::operator()<boost::_mfi::mf0<void, gazebo::sensors::SensorManager::SensorContainer>, boost::_bi::list0> (this=0x22d5f58, f=..., a=...) at /usr/include/boost/bind/bind.hpp:253
#5  0x00007f8b9032f6b5 in boost::_bi::bind_t<void, boost::_mfi::mf0<void, gazebo::sensors::SensorManager::SensorContainer>, boost::_bi::list1<boost::_bi::value<gazebo::sensors::SensorManager::SensorContainer*> > >::operator() (this=0x22d5f48) at /usr/include/boost/bind/bind_template.hpp:20
#6  0x00007f8b9032f5b0 in boost::detail::thread_data<boost::_bi::bind_t<void, boost::_mfi::mf0<void, gazebo::sensors::SensorManager::SensorContainer>, boost::_bi::list1<boost::_bi::value<gazebo::sensors::SensorManager::SensorContainer*> > > >::run (this=0x22d5dc0)
    at /usr/include/boost/thread/detail/thread.hpp:62
#7  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#8  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b3dff8700) at pthread_create.c:308
#9  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#10 0x0000000000000000 in ?? ()
---Type <return> to continue, or q <return> to quit---

Thread 4 (Thread 0x7f8b3d7f7700 (LWP 28034)):
#0  pthread_cond_wait@@GLIBC_2.3.2 () at ../nptl/sysdeps/unix/sysv/linux/x86_64/pthread_cond_wait.S:162
#1  0x00007f8b912b2efd in boost::condition_variable::wait (this=0x22bfc48, m=...) at /usr/include/boost/thread/pthread/condition_variable.hpp:56
#2  0x00007f8b90327bd9 in gazebo::sensors::SensorManager::SensorContainer::RunLoop (this=0x22bfbf0)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/sensors/SensorManager.cc:437
#3  0x00007f8b9032f7ad in boost::_mfi::mf0<void, gazebo::sensors::SensorManager::SensorContainer>::operator() (this=0x22a7578, p=0x22bfbf0)
    at /usr/include/boost/bind/mem_fn_template.hpp:49
#4  0x00007f8b9032f710 in boost::_bi::list1<boost::_bi::value<gazebo::sensors::SensorManager::SensorContainer*> >::operator()<boost::_mfi::mf0<void, gazebo::sensors::SensorManager::SensorContainer>, boost::_bi::list0> (this=0x22a7588, f=..., a=...) at /usr/include/boost/bind/bind.hpp:253
#5  0x00007f8b9032f6b5 in boost::_bi::bind_t<void, boost::_mfi::mf0<void, gazebo::sensors::SensorManager::SensorContainer>, boost::_bi::list1<boost::_bi::value<gazebo::sensors::SensorManager::SensorContainer*> > >::operator() (this=0x22a7578) at /usr/include/boost/bind/bind_template.hpp:20
#6  0x00007f8b9032f5b0 in boost::detail::thread_data<boost::_bi::bind_t<void, boost::_mfi::mf0<void, gazebo::sensors::SensorManager::SensorContainer>, boost::_bi::list1<boost::_bi::value<gazebo::sensors::SensorManager::SensorContainer*> > > >::run (this=0x22a73f0)
    at /usr/include/boost/thread/detail/thread.hpp:62
#7  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#8  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b3d7f7700) at pthread_create.c:308
#9  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#10 0x0000000000000000 in ?? ()

Thread 3 (Thread 0x7f8b3cff6700 (LWP 28035)):
#0  __lll_lock_wait () at ../nptl/sysdeps/unix/sysv/linux/x86_64/lowlevellock.S:132
#1  0x00007f8b8fc0d065 in _L_lock_858 () from /lib/x86_64-linux-gnu/libpthread.so.0
#2  0x00007f8b8fc0ceba in __pthread_mutex_lock (mutex=0x20c88e0) at pthread_mutex_lock.c:61
#3  0x0000000000473055 in boost::mutex::lock (this=0x20c88e0) at /usr/include/boost/thread/pthread/mutex.hpp:59
#4  0x0000000000474f5a in boost::unique_lock<boost::mutex>::lock (this=0x7f8b3cff4b90) at /usr/include/boost/thread/locks.hpp:412
#5  0x0000000000474ee5 in boost::unique_lock<boost::mutex>::unique_lock (this=0x7f8b3cff4b90, m_=...) at /usr/include/boost/thread/locks.hpp:290
#6  0x00007f8b90b77398 in gazebo::transport::Publication::AddSubscription (this=0x20c8850, _node=...)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/transport/Publication.cc:47 nodeMutex mark99 AddSubscription
#7  0x00007f8b90b8e144 in gazebo::transport::TopicManager::Advertise<gazebo::msgs::Request> (this=0x6c0fa0, _topic=..., _queueLimit=1000, 
    _hzRate=0) at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/transport/TopicManager.hh:157
#8  0x00007f8b90b8ce55 in gazebo::transport::Node::Advertise<gazebo::msgs::Request> (this=0x7f8af40dbf60, _topic=..., _queueLimit=1000, 
    _hzRate=0) at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/transport/Node.hh:102
#9  0x00007f8b90710a1f in gazebo::physics::Entity::Load (this=0x7f8af400eb40, _sdf=...)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/physics/Entity.cc:96 publish request, triggers World::OnReq:1080
#10 0x00007f8b9075eee8 in gazebo::physics::Model::Load (this=0x7f8af400eb40, _sdf=...)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/physics/Model.cc:85 Model::Load calls Entity::Load mark99
#11 0x00007f8b90790a00 in gazebo::physics::World::LoadModel (this=0x20a6cc0, _sdf=..., _parent=...)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/physics/World.cc:697 loadModelMutex LoadModel
#12 0x00007f8b907973c3 in gazebo::physics::World::ProcessFactoryMsgs (this=0x20a6cc0)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/physics/World.cc:1551 ProcessFactoryMessages
#13 0x00007f8b90798fc0 in gazebo::physics::World::ProcessMessages (this=0x20a6cc0)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/physics/World.cc:1748 receiveMutex ProcessMessages
#14 0x00007f8b9078faec in gazebo::physics::World::Step (this=0x20a6cc0)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/physics/World.cc:500 World::Step
#15 0x00007f8b9078e6d9 in gazebo::physics::World::RunLoop (this=0x20a6cc0)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/physics/World.cc:353 World::RunLoop
#16 0x00007f8b907b0d49 in boost::_mfi::mf0<void, gazebo::physics::World>::operator() (this=0x22cbda8, p=0x20a6cc0)
    at /usr/include/boost/bind/mem_fn_template.hpp:49
#17 0x00007f8b907afe82 in boost::_bi::list1<boost::_bi::value<gazebo::physics::World*> >::operator()<boost::_mfi::mf0<void, gazebo::physics::World>, boost::_bi::list0> (this=0x22cbdb8, f=..., a=...) at /usr/include/boost/bind/bind.hpp:253
#18 0x00007f8b907aefed in boost::_bi::bind_t<void, boost::_mfi::mf0<void, gazebo::physics::World>, boost::_bi::list1<boost::_bi::value<gazebo::physics::World*> > >::operator() (this=0x22cbda8) at /usr/include/boost/bind/bind_template.hpp:20
#19 0x00007f8b907b2400 in boost::detail::thread_data<boost::_bi::bind_t<void, boost::_mfi::mf0<void, gazebo::physics::World>, boost::_bi::list1<boost::_bi::value<gazebo::physics::World*> > > >::run (this=0x22cbc20) at /usr/include/boost/thread/detail/thread.hpp:62
#20 0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#21 0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b3cff6700) at pthread_create.c:308
#22 0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#23 0x0000000000000000 in ?? ()

Thread 2 (Thread 0x7f8b37fff700 (LWP 28039)):
#0  pthread_cond_timedwait@@GLIBC_2.3.2 () at ../nptl/sysdeps/unix/sysv/linux/x86_64/pthread_cond_timedwait.S:215
#1  0x00007f8b90b40981 in boost::condition_variable::timed_wait (this=0x7f8af4007450, m=..., wait_until=...)
---Type <return> to continue, or q <return> to quit---
    at /usr/include/boost/thread/pthread/condition_variable.hpp:74
#2  0x00007f8b747bf554 in bool boost::condition_variable::timed_wait<boost::date_time::subsecond_duration<boost::posix_time::time_duration, 1000000l> >(boost::unique_lock<boost::mutex>&, boost::date_time::subsecond_duration<boost::posix_time::time_duration, 1000000l> const&) ()
   from /opt/ros/groovy/lib/libroscpp.so
#3  0x00007f8b747bd787 in ros::CallbackQueue::callAvailable(ros::WallDuration) () from /opt/ros/groovy/lib/libroscpp.so
#4  0x00007f8b441dfd52 in gazebo::GazeboRosJointTrajectory::QueueThread (this=0x7f8af40071f0)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo_plugins/src/gazebo_ros_joint_trajectory.cpp:343
#5  0x00007f8b8f0766c9 in ?? () from /usr/lib/libboost_thread.so.1.49.0
#6  0x00007f8b8fc0ae9a in start_thread (arg=0x7f8b37fff700) at pthread_create.c:308
#7  0x00007f8b8e41fccd in clone () at ../sysdeps/unix/sysv/linux/x86_64/clone.S:112
#8  0x0000000000000000 in ?? ()

Thread 1 (Thread 0x7f8b91727840 (LWP 26871)):
#0  0x00007f8b8fc1252d in nanosleep () at ../sysdeps/unix/syscall-template.S:82
#1  0x00007f8b912f7eca in gazebo::common::Time::Sleep (_time=...)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/common/Time.cc:171
#2  0x00007f8b912f80cf in gazebo::common::Time::MSleep (_ms=1)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/common/Time.cc:189
#3  0x00000000004706ab in gazebo::Server::Run (this=0xf9db40)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/Server.cc:417
#4  0x000000000046a68c in main (argc=9, argv=0x7fff277cef38)
    at /home/hsu/projects/groovy/simulator_gazebo/gazebo/build/gazebo-hg/gazebo/server_main.cc:43
(gdb) 

