; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_sw_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_sw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_buffer = type { i64 }
%struct.cudbg_error = type { i32 }
%struct.sw_state = type { i64, i32, i32 }

@A_PCIE_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*)* @collect_sw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_sw_state(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.cudbg_buffer, align 8
  %9 = alloca %struct.sw_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %6, align 8
  %12 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %13 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %12, i32 0, i32 0
  %14 = load %struct.adapter*, %struct.adapter** %13, align 8
  store %struct.adapter* %14, %struct.adapter** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 16, i32* %10, align 4
  %15 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %15, i32 %16, %struct.cudbg_buffer* %8)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %47

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %8, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.sw_state*
  store %struct.sw_state* %24, %struct.sw_state** %9, align 8
  %25 = load %struct.adapter*, %struct.adapter** %7, align 8
  %26 = load i32, i32* @A_PCIE_FW, align 4
  %27 = call i32 @t4_read_reg(%struct.adapter* %25, i32 %26)
  %28 = load %struct.sw_state*, %struct.sw_state** %9, align 8
  %29 = getelementptr inbounds %struct.sw_state, %struct.sw_state* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sw_state*, %struct.sw_state** %9, align 8
  %31 = getelementptr inbounds %struct.sw_state, %struct.sw_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @snprintf(i32 %32, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.sw_state*, %struct.sw_state** %9, align 8
  %35 = getelementptr inbounds %struct.sw_state, %struct.sw_state* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %37 = call i32 @write_compression_hdr(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  br label %44

41:                                               ; preds = %21
  %42 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %43 = call i32 @compress_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %42)
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %41, %40
  %45 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %46 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %45)
  br label %47

47:                                               ; preds = %44, %20
  %48 = load i32, i32* %11, align 4
  ret i32 %48
}

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @write_compression_hdr(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @compress_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
