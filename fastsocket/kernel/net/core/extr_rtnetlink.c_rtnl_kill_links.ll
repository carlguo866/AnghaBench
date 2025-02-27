; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_kill_links.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_rtnl_kill_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.rtnl_link_ops = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtnl_kill_links(%struct.net* %0, %struct.rtnl_link_ops* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.rtnl_link_ops*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.rtnl_link_ops* %1, %struct.rtnl_link_ops** %4, align 8
  %5 = call i32 (...) @rtnl_lock()
  %6 = load %struct.net*, %struct.net** %3, align 8
  %7 = load %struct.rtnl_link_ops*, %struct.rtnl_link_ops** %4, align 8
  %8 = call i32 @__rtnl_kill_links(%struct.net* %6, %struct.rtnl_link_ops* %7)
  %9 = call i32 (...) @rtnl_unlock()
  ret void
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @__rtnl_kill_links(%struct.net*, %struct.rtnl_link_ops*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
