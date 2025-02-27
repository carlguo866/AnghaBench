; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit.c_audit_send_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_audit.c_audit_send_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_netlink_list = type { i32, i32 }
%struct.sk_buff = type { i32 }

@audit_cmd_mutex = common dso_local global i32 0, align 4
@audit_sock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_send_list(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.audit_netlink_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.audit_netlink_list*
  store %struct.audit_netlink_list* %7, %struct.audit_netlink_list** %3, align 8
  %8 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %3, align 8
  %9 = getelementptr inbounds %struct.audit_netlink_list, %struct.audit_netlink_list* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = call i32 @mutex_lock(i32* @audit_cmd_mutex)
  %12 = call i32 @mutex_unlock(i32* @audit_cmd_mutex)
  br label %13

13:                                               ; preds = %18, %1
  %14 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %3, align 8
  %15 = getelementptr inbounds %struct.audit_netlink_list, %struct.audit_netlink_list* %14, i32 0, i32 1
  %16 = call %struct.sk_buff* @__skb_dequeue(i32* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %5, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* @audit_sock, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @netlink_unicast(i32 %19, %struct.sk_buff* %20, i32 %21, i32 0)
  br label %13

23:                                               ; preds = %13
  %24 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %3, align 8
  %25 = call i32 @kfree(%struct.audit_netlink_list* %24)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i32 @netlink_unicast(i32, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @kfree(%struct.audit_netlink_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
