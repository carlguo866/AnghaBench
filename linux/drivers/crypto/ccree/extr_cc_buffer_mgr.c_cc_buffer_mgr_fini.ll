; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_buffer_mgr_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccree/extr_cc_buffer_mgr.c_cc_buffer_mgr_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc_drvdata = type { %struct.buff_mgr_handle* }
%struct.buff_mgr_handle = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_buffer_mgr_fini(%struct.cc_drvdata* %0) #0 {
  %2 = alloca %struct.cc_drvdata*, align 8
  %3 = alloca %struct.buff_mgr_handle*, align 8
  store %struct.cc_drvdata* %0, %struct.cc_drvdata** %2, align 8
  %4 = load %struct.cc_drvdata*, %struct.cc_drvdata** %2, align 8
  %5 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %4, i32 0, i32 0
  %6 = load %struct.buff_mgr_handle*, %struct.buff_mgr_handle** %5, align 8
  store %struct.buff_mgr_handle* %6, %struct.buff_mgr_handle** %3, align 8
  %7 = load %struct.buff_mgr_handle*, %struct.buff_mgr_handle** %3, align 8
  %8 = icmp ne %struct.buff_mgr_handle* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.buff_mgr_handle*, %struct.buff_mgr_handle** %3, align 8
  %11 = getelementptr inbounds %struct.buff_mgr_handle, %struct.buff_mgr_handle* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dma_pool_destroy(i32 %12)
  %14 = load %struct.cc_drvdata*, %struct.cc_drvdata** %2, align 8
  %15 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %14, i32 0, i32 0
  %16 = load %struct.buff_mgr_handle*, %struct.buff_mgr_handle** %15, align 8
  %17 = call i32 @kfree(%struct.buff_mgr_handle* %16)
  %18 = load %struct.cc_drvdata*, %struct.cc_drvdata** %2, align 8
  %19 = getelementptr inbounds %struct.cc_drvdata, %struct.cc_drvdata* %18, i32 0, i32 0
  store %struct.buff_mgr_handle* null, %struct.buff_mgr_handle** %19, align 8
  br label %20

20:                                               ; preds = %9, %1
  ret i32 0
}

declare dso_local i32 @dma_pool_destroy(i32) #1

declare dso_local i32 @kfree(%struct.buff_mgr_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
