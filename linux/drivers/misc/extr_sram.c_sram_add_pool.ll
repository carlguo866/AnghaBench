; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_sram.c_sram_add_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_sram.c_sram_add_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sram_dev = type { i32 }
%struct.sram_reserve = type { i32, i32 }
%struct.sram_partition = type { i64, i32 }

@SRAM_GRANULARITY = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to register subpool: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sram_dev*, %struct.sram_reserve*, i32, %struct.sram_partition*)* @sram_add_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sram_add_pool(%struct.sram_dev* %0, %struct.sram_reserve* %1, i32 %2, %struct.sram_partition* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sram_dev*, align 8
  %7 = alloca %struct.sram_reserve*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sram_partition*, align 8
  %10 = alloca i32, align 4
  store %struct.sram_dev* %0, %struct.sram_dev** %6, align 8
  store %struct.sram_reserve* %1, %struct.sram_reserve** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sram_partition* %3, %struct.sram_partition** %9, align 8
  %11 = load %struct.sram_dev*, %struct.sram_dev** %6, align 8
  %12 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SRAM_GRANULARITY, align 4
  %15 = call i32 @ilog2(i32 %14)
  %16 = load i32, i32* @NUMA_NO_NODE, align 4
  %17 = load %struct.sram_reserve*, %struct.sram_reserve** %7, align 8
  %18 = getelementptr inbounds %struct.sram_reserve, %struct.sram_reserve* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @devm_gen_pool_create(i32 %13, i32 %15, i32 %16, i32 %19)
  %21 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %22 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %24 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %30 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %5, align 4
  br label %56

33:                                               ; preds = %4
  %34 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %35 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sram_partition*, %struct.sram_partition** %9, align 8
  %38 = getelementptr inbounds %struct.sram_partition, %struct.sram_partition* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.sram_reserve*, %struct.sram_reserve** %7, align 8
  %42 = getelementptr inbounds %struct.sram_reserve, %struct.sram_reserve* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NUMA_NO_NODE, align 4
  %45 = call i32 @gen_pool_add_virt(i32 %36, i64 %39, i32 %40, i32 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %33
  %49 = load %struct.sram_dev*, %struct.sram_dev** %6, align 8
  %50 = getelementptr inbounds %struct.sram_dev, %struct.sram_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  br label %56

55:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %48, %28
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @devm_gen_pool_create(i32, i32, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @gen_pool_add_virt(i32, i64, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
