; ModuleID = '/home/carl/AnghaBench/linux/drivers/connector/extr_cn_proc.c_cn_proc_mcast_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/connector/extr_cn_proc.c_cn_proc_mcast_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cn_msg = type { i32, i32, i32, i64 }
%struct.netlink_skb_parms = type { i32 }

@init_user_ns = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@init_pid_ns = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@proc_event_num_listeners = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cn_msg*, %struct.netlink_skb_parms*)* @cn_proc_mcast_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn_proc_mcast_ctl(%struct.cn_msg* %0, %struct.netlink_skb_parms* %1) #0 {
  %3 = alloca %struct.cn_msg*, align 8
  %4 = alloca %struct.netlink_skb_parms*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.cn_msg* %0, %struct.cn_msg** %3, align 8
  store %struct.netlink_skb_parms* %1, %struct.netlink_skb_parms** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %8 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = icmp ne i64 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %51

13:                                               ; preds = %2
  %14 = call i32* (...) @current_user_ns()
  %15 = icmp ne i32* %14, @init_user_ns
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @current, align 4
  %18 = call i32* @task_active_pid_ns(i32 %17)
  %19 = icmp ne i32* %18, @init_pid_ns
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %13
  br label %51

21:                                               ; preds = %16
  %22 = load %struct.netlink_skb_parms*, %struct.netlink_skb_parms** %4, align 8
  %23 = load i32, i32* @CAP_NET_ADMIN, align 4
  %24 = call i32 @__netlink_ns_capable(%struct.netlink_skb_parms* %22, i32* @init_user_ns, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @EPERM, align 4
  store i32 %27, i32* %6, align 4
  br label %42

28:                                               ; preds = %21
  %29 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %30 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %5, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %39 [
    i32 128, label %35
    i32 129, label %37
  ]

35:                                               ; preds = %28
  %36 = call i32 @atomic_inc(i32* @proc_event_num_listeners)
  br label %41

37:                                               ; preds = %28
  %38 = call i32 @atomic_dec(i32* @proc_event_num_listeners)
  br label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %39, %37, %35
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %45 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.cn_msg*, %struct.cn_msg** %3, align 8
  %48 = getelementptr inbounds %struct.cn_msg, %struct.cn_msg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cn_proc_ack(i32 %43, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %42, %20, %12
  ret void
}

declare dso_local i32* @current_user_ns(...) #1

declare dso_local i32* @task_active_pid_ns(i32) #1

declare dso_local i32 @__netlink_ns_capable(%struct.netlink_skb_parms*, i32*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @cn_proc_ack(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
