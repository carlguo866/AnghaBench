; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-core.c_saa7164_thread_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7164/extr_saa7164-core.c_saa7164_thread_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7164_dev = type { i32 }
%struct.tmFwInfoStruct = type { i32 }

@DBGLVL_THR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"thread started\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"thread running\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"thread exiting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @saa7164_thread_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7164_thread_function(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.saa7164_dev*, align 8
  %4 = alloca %struct.tmFwInfoStruct, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.saa7164_dev*
  store %struct.saa7164_dev* %7, %struct.saa7164_dev** %3, align 8
  store i64 0, i64* %5, align 8
  %8 = load i32, i32* @DBGLVL_THR, align 4
  %9 = call i32 @dprintk(i32 %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @set_freezable()
  br label %11

11:                                               ; preds = %1, %32
  %12 = call i32 @msleep_interruptible(i32 100)
  %13 = call i64 (...) @kthread_should_stop()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %33

16:                                               ; preds = %11
  %17 = call i32 (...) @try_to_freeze()
  %18 = load i32, i32* @DBGLVL_THR, align 4
  %19 = call i32 @dprintk(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %21 = call i32 @saa7164_api_collect_debug(%struct.saa7164_dev* %20)
  %22 = load i64, i64* %5, align 8
  %23 = add nsw i64 %22, 1000
  %24 = load i32, i32* @jiffies, align 4
  %25 = call i64 @jiffies_to_msecs(i32 %24)
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.saa7164_dev*, %struct.saa7164_dev** %3, align 8
  %29 = call i32 @saa7164_api_get_load_info(%struct.saa7164_dev* %28, %struct.tmFwInfoStruct* %4)
  %30 = load i32, i32* @jiffies, align 4
  %31 = call i64 @jiffies_to_msecs(i32 %30)
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %27, %16
  br label %11

33:                                               ; preds = %15
  %34 = load i32, i32* @DBGLVL_THR, align 4
  %35 = call i32 @dprintk(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @saa7164_api_collect_debug(%struct.saa7164_dev*) #1

declare dso_local i64 @jiffies_to_msecs(i32) #1

declare dso_local i32 @saa7164_api_get_load_info(%struct.saa7164_dev*, %struct.tmFwInfoStruct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
