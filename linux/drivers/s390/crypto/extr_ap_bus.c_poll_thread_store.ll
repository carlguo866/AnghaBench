; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_poll_thread_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_bus.c_poll_thread_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bus_type*, i8*, i64)* @poll_thread_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @poll_thread_store(%struct.bus_type* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.bus_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bus_type* %0, %struct.bus_type** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @sscanf(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %8)
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64, i64* @EINVAL, align 8
  %15 = sub i64 0, %14
  store i64 %15, i64* %4, align 8
  br label %31

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = call i32 (...) @ap_poll_thread_start()
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %23, %19
  br label %29

27:                                               ; preds = %16
  %28 = call i32 (...) @ap_poll_thread_stop()
  br label %29

29:                                               ; preds = %27, %26
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %29, %13
  %32 = load i64, i64* %4, align 8
  ret i64 %32
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @ap_poll_thread_start(...) #1

declare dso_local i32 @ap_poll_thread_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
