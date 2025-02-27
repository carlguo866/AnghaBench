; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c___rtnl_link_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c___rtnl_link_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtnl_link_ops = type { i32, i64, i64, i32 }

@EEXIST = common dso_local global i32 0, align 4
@unregister_netdevice_queue = common dso_local global i64 0, align 8
@link_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rtnl_link_register(%struct.rtnl_link_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtnl_link_ops*, align 8
  store %struct.rtnl_link_ops* %0, %struct.rtnl_link_ops** %3, align 8
  %4 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %3, align 8
  %5 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @rtnl_link_ops_get(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EEXIST, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %3, align 8
  %14 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %3, align 8
  %19 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* @unregister_netdevice_queue, align 8
  %24 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %3, align 8
  %25 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %22, %17, %12
  %27 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %3, align 8
  %28 = getelementptr inbounds %struct.rtnl_link_ops, %struct.rtnl_link_ops* %27, i32 0, i32 0
  %29 = call i32 @list_add_tail(i32* %28, i32* @link_ops)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %26, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @rtnl_link_ops_get(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
