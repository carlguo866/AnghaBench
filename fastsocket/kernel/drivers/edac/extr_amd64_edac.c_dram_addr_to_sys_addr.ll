; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_dram_addr_to_sys_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_dram_addr_to_sys_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.amd64_pvt* }
%struct.amd64_pvt = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"using DHAR to translate DramAddr 0x%lx to SysAddr 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"    Node %d, DramAddr 0x%lx to SysAddr 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mem_ctl_info*, i64)* @dram_addr_to_sys_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dram_addr_to_sys_addr(%struct.mem_ctl_info* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.amd64_pvt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 0
  %15 = load %struct.amd64_pvt*, %struct.amd64_pvt** %14, align 8
  store %struct.amd64_pvt* %15, %struct.amd64_pvt** %6, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %17 = call i32 @amd64_get_dram_hole_info(%struct.mem_ctl_info* %16, i64* %7, i64* %8, i64* %9)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %9, align 8
  %28 = add nsw i64 %26, %27
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %8, align 8
  %33 = add nsw i64 %31, %32
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i32 (i8*, i64, i64, ...) @debugf1(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %35)
  %37 = load i64, i64* %11, align 8
  store i64 %37, i64* %3, align 8
  br label %62

38:                                               ; preds = %24, %20
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %41 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %42 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @get_dram_base(%struct.amd64_pvt* %40, i32 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %10, align 8
  %47 = add nsw i64 %45, %46
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = and i64 %48, 549755813888
  %50 = sub i64 %49, 1
  %51 = xor i64 %50, -1
  %52 = load i64, i64* %11, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %11, align 8
  %54 = load %struct.amd64_pvt*, %struct.amd64_pvt** %6, align 8
  %55 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32 (i8*, i64, i64, ...) @debugf1(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %57, i64 %58, i64 %59)
  %61 = load i64, i64* %11, align 8
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %39, %30
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i32 @amd64_get_dram_hole_info(%struct.mem_ctl_info*, i64*, i64*, i64*) #1

declare dso_local i32 @debugf1(i8*, i64, i64, ...) #1

declare dso_local i64 @get_dram_base(%struct.amd64_pvt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
