; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_cs_delete_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_cs_delete_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmc_cs_data = type { %struct.resource }
%struct.resource = type { i64, i64 }

@gpmc_cs = common dso_local global %struct.gpmc_cs_data* null, align 8
@gpmc_mem_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gpmc_cs_delete_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmc_cs_delete_mem(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpmc_cs_data*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load %struct.gpmc_cs_data*, %struct.gpmc_cs_data** @gpmc_cs, align 8
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.gpmc_cs_data, %struct.gpmc_cs_data* %6, i64 %8
  store %struct.gpmc_cs_data* %9, %struct.gpmc_cs_data** %3, align 8
  %10 = load %struct.gpmc_cs_data*, %struct.gpmc_cs_data** %3, align 8
  %11 = getelementptr inbounds %struct.gpmc_cs_data, %struct.gpmc_cs_data* %10, i32 0, i32 0
  store %struct.resource* %11, %struct.resource** %4, align 8
  %12 = call i32 @spin_lock(i32* @gpmc_mem_lock)
  %13 = load %struct.resource*, %struct.resource** %4, align 8
  %14 = call i32 @release_resource(%struct.resource* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.resource*, %struct.resource** %4, align 8
  %16 = getelementptr inbounds %struct.resource, %struct.resource* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.resource*, %struct.resource** %4, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = call i32 @spin_unlock(i32* @gpmc_mem_lock)
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @release_resource(%struct.resource*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
