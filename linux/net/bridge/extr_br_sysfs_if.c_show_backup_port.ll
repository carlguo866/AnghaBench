; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_sysfs_if.c_show_backup_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_sysfs_if.c_show_backup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge_port*, i8*)* @show_backup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_backup_port(%struct.net_bridge_port* %0, i8* %1) #0 {
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_bridge_port*, align 8
  %6 = alloca i32, align 4
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %9 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.net_bridge_port* @rcu_dereference(i32 %10)
  store %struct.net_bridge_port* %11, %struct.net_bridge_port** %5, align 8
  %12 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %13 = icmp ne %struct.net_bridge_port* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load %struct.net_bridge_port*, %struct.net_bridge_port** %5, align 8
  %17 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %14, %2
  %23 = call i32 (...) @rcu_read_unlock()
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_bridge_port* @rcu_dereference(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
