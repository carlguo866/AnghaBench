; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_build_virtual_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_build_virtual_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_thin_device = type { i32 }
%struct.dm_cell_key = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_thin_device*, i32, %struct.dm_cell_key*)* @build_virtual_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_virtual_key(%struct.dm_thin_device* %0, i32 %1, %struct.dm_cell_key* %2) #0 {
  %4 = alloca %struct.dm_thin_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_cell_key*, align 8
  store %struct.dm_thin_device* %0, %struct.dm_thin_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dm_cell_key* %2, %struct.dm_cell_key** %6, align 8
  %7 = load %struct.dm_cell_key*, %struct.dm_cell_key** %6, align 8
  %8 = getelementptr inbounds %struct.dm_cell_key, %struct.dm_cell_key* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.dm_thin_device*, %struct.dm_thin_device** %4, align 8
  %10 = call i32 @dm_thin_dev_id(%struct.dm_thin_device* %9)
  %11 = load %struct.dm_cell_key*, %struct.dm_cell_key** %6, align 8
  %12 = getelementptr inbounds %struct.dm_cell_key, %struct.dm_cell_key* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.dm_cell_key*, %struct.dm_cell_key** %6, align 8
  %15 = getelementptr inbounds %struct.dm_cell_key, %struct.dm_cell_key* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  ret void
}

declare dso_local i32 @dm_thin_dev_id(%struct.dm_thin_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
