; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_unregister_transfer_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_unregister_transfer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { %struct.loop_func_table* }
%struct.loop_func_table = type { i32 }

@loop_ctl_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @unregister_transfer_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unregister_transfer_cb(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.loop_device*, align 8
  %8 = alloca %struct.loop_func_table*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.loop_device*
  store %struct.loop_device* %10, %struct.loop_device** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.loop_func_table*
  store %struct.loop_func_table* %12, %struct.loop_func_table** %8, align 8
  %13 = call i32 @mutex_lock(i32* @loop_ctl_mutex)
  %14 = load %struct.loop_device*, %struct.loop_device** %7, align 8
  %15 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %14, i32 0, i32 0
  %16 = load %struct.loop_func_table*, %struct.loop_func_table** %15, align 8
  %17 = load %struct.loop_func_table*, %struct.loop_func_table** %8, align 8
  %18 = icmp eq %struct.loop_func_table* %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.loop_device*, %struct.loop_device** %7, align 8
  %21 = call i32 @loop_release_xfer(%struct.loop_device* %20)
  br label %22

22:                                               ; preds = %19, %3
  %23 = call i32 @mutex_unlock(i32* @loop_ctl_mutex)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @loop_release_xfer(%struct.loop_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
