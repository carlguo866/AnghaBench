; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ooo_submit_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_ooo_submit_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ll2_info = type { i32 }
%struct.ecore_ooo_buffer = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ll2_info*)* @ecore_ooo_submit_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_ooo_submit_rx_buffers(%struct.ecore_hwfn* %0, %struct.ecore_ll2_info* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ll2_info*, align 8
  %5 = alloca %struct.ecore_ooo_buffer*, align 8
  %6 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ll2_info* %1, %struct.ecore_ll2_info** %4, align 8
  br label %7

7:                                                ; preds = %32, %2
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ecore_ooo_buffer* @ecore_ooo_get_free_buffer(i32 %10)
  store %struct.ecore_ooo_buffer* %11, %struct.ecore_ooo_buffer** %5, align 8
  %12 = icmp ne %struct.ecore_ooo_buffer* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %7
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %15 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %4, align 8
  %16 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %5, align 8
  %19 = getelementptr inbounds %struct.ecore_ooo_buffer, %struct.ecore_ooo_buffer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %5, align 8
  %22 = call i32 @ecore_ll2_post_rx_buffer(%struct.ecore_hwfn* %14, i32 %17, i32 %20, i32 0, %struct.ecore_ooo_buffer* %21, i32 1)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ECORE_SUCCESS, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %13
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %28 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ecore_ooo_buffer*, %struct.ecore_ooo_buffer** %5, align 8
  %31 = call i32 @ecore_ooo_put_free_buffer(i32 %29, %struct.ecore_ooo_buffer* %30)
  br label %33

32:                                               ; preds = %13
  br label %7

33:                                               ; preds = %26, %7
  ret void
}

declare dso_local %struct.ecore_ooo_buffer* @ecore_ooo_get_free_buffer(i32) #1

declare dso_local i32 @ecore_ll2_post_rx_buffer(%struct.ecore_hwfn*, i32, i32, i32, %struct.ecore_ooo_buffer*, i32) #1

declare dso_local i32 @ecore_ooo_put_free_buffer(i32, %struct.ecore_ooo_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
