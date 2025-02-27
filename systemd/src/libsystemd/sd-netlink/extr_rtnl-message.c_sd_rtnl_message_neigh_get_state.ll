; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_rtnl-message.c_sd_rtnl_message_neigh_get_state.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-netlink/extr_rtnl-message.c_sd_rtnl_message_neigh_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32 }
%struct.ndmsg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_rtnl_message_neigh_get_state(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ndmsg*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  %9 = call i32 @assert_return(%struct.TYPE_6__* %6, i32 %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i32 @assert_return(%struct.TYPE_6__* %12, i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_6__* @rtnl_message_type_is_neigh(i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i32 @assert_return(%struct.TYPE_6__* %21, i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call %struct.ndmsg* @NLMSG_DATA(%struct.TYPE_6__* %27)
  store %struct.ndmsg* %28, %struct.ndmsg** %5, align 8
  %29 = load %struct.ndmsg*, %struct.ndmsg** %5, align 8
  %30 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %4, align 8
  store i32 %31, i32* %32, align 4
  ret i32 0
}

declare dso_local i32 @assert_return(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.TYPE_6__* @rtnl_message_type_is_neigh(i32) #1

declare dso_local %struct.ndmsg* @NLMSG_DATA(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
