; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_gpmc.c_gpmc_cs_insert_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_gpmc.c_gpmc_cs_insert_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64 }

@gpmc_cs_mem = common dso_local global %struct.resource* null, align 8
@gpmc_mem_lock = common dso_local global i32 0, align 4
@gpmc_mem_root = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @gpmc_cs_insert_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmc_cs_insert_mem(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.resource*, %struct.resource** @gpmc_cs_mem, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.resource, %struct.resource* %9, i64 %11
  store %struct.resource* %12, %struct.resource** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @gpmc_mem_align(i64 %13)
  store i64 %14, i64* %6, align 8
  %15 = call i32 @spin_lock(i32* @gpmc_mem_lock)
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.resource*, %struct.resource** %7, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %19, %20
  %22 = sub i64 %21, 1
  %23 = load %struct.resource*, %struct.resource** %7, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.resource*, %struct.resource** %7, align 8
  %26 = call i32 @request_resource(i32* @gpmc_mem_root, %struct.resource* %25)
  store i32 %26, i32* %8, align 4
  %27 = call i32 @spin_unlock(i32* @gpmc_mem_lock)
  %28 = load i32, i32* %8, align 4
  ret i32 %28
}

declare dso_local i64 @gpmc_mem_align(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @request_resource(i32*, %struct.resource*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
