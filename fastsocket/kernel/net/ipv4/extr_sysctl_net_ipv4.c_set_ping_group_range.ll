; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_sysctl_net_ipv4.c_set_ping_group_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_sysctl_net_ipv4.c_set_ping_group_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ctl_table = type { i32* }

@sysctl_local_ports = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_table*, i32*)* @set_ping_group_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ping_group_range(%struct.ctl_table* %0, i32* %1) #0 {
  %3 = alloca %struct.ctl_table*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.ctl_table* %0, %struct.ctl_table** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %7 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = call i32 @write_seqlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sysctl_local_ports, i32 0, i32 0))
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %12, i32* %14, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %17, i32* %19, align 4
  %20 = call i32 @write_sequnlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sysctl_local_ports, i32 0, i32 0))
  ret void
}

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @write_sequnlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
