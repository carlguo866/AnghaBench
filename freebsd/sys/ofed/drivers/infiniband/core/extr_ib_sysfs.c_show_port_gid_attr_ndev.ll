; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_show_port_gid_attr_ndev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sysfs.c_show_port_gid_attr_ndev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_port = type { i32 }
%struct.port_attribute = type { i32 }

@print_ndev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_port*, %struct.port_attribute*, i8*)* @show_port_gid_attr_ndev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_port_gid_attr_ndev(%struct.ib_port* %0, %struct.port_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.ib_port*, align 8
  %5 = alloca %struct.port_attribute*, align 8
  %6 = alloca i8*, align 8
  store %struct.ib_port* %0, %struct.ib_port** %4, align 8
  store %struct.port_attribute* %1, %struct.port_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.ib_port*, %struct.ib_port** %4, align 8
  %8 = load %struct.port_attribute*, %struct.port_attribute** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i32, i32* @print_ndev, align 4
  %11 = call i32 @_show_port_gid_attr(%struct.ib_port* %7, %struct.port_attribute* %8, i8* %9, i32 %10)
  ret i32 %11
}

declare dso_local i32 @_show_port_gid_attr(%struct.ib_port*, %struct.port_attribute*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
