; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_switch_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_switch_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"could not set chan, error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"could not reset Tx queues, error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"could not init wme, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar5523*)* @ar5523_switch_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5523_switch_chan(%struct.ar5523* %0) #0 {
  %2 = alloca %struct.ar5523*, align 8
  %3 = alloca i32, align 4
  store %struct.ar5523* %0, %struct.ar5523** %2, align 8
  %4 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %5 = call i32 @ar5523_set_chan(%struct.ar5523* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @ar5523_err(%struct.ar5523* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %14 = call i32 @ar5523_reset_tx_queues(%struct.ar5523* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ar5523_err(%struct.ar5523* %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %31

21:                                               ; preds = %12
  %22 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %23 = call i32 @ar5523_queue_init(%struct.ar5523* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @ar5523_err(%struct.ar5523* %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %21
  br label %31

31:                                               ; preds = %30, %17, %8
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @ar5523_set_chan(%struct.ar5523*) #1

declare dso_local i32 @ar5523_err(%struct.ar5523*, i8*, i32) #1

declare dso_local i32 @ar5523_reset_tx_queues(%struct.ar5523*) #1

declare dso_local i32 @ar5523_queue_init(%struct.ar5523*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
