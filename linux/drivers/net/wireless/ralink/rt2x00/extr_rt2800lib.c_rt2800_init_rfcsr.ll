; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_init_rfcsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2800_init_rfcsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_init_rfcsr(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %3 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %4 = call i64 @rt2800_is_305x_soc(%struct.rt2x00_dev* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %8 = call i32 @rt2800_init_rfcsr_305x_soc(%struct.rt2x00_dev* %7)
  br label %50

9:                                                ; preds = %1
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %11 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %50 [
    i32 141, label %14
    i32 140, label %14
    i32 139, label %14
    i32 138, label %17
    i32 137, label %20
    i32 136, label %23
    i32 133, label %26
    i32 135, label %29
    i32 134, label %32
    i32 132, label %35
    i32 131, label %38
    i32 130, label %41
    i32 129, label %44
    i32 128, label %47
  ]

14:                                               ; preds = %9, %9, %9
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %16 = call i32 @rt2800_init_rfcsr_30xx(%struct.rt2x00_dev* %15)
  br label %50

17:                                               ; preds = %9
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %19 = call i32 @rt2800_init_rfcsr_3290(%struct.rt2x00_dev* %18)
  br label %50

20:                                               ; preds = %9
  %21 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %22 = call i32 @rt2800_init_rfcsr_3352(%struct.rt2x00_dev* %21)
  br label %50

23:                                               ; preds = %9
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %25 = call i32 @rt2800_init_rfcsr_3390(%struct.rt2x00_dev* %24)
  br label %50

26:                                               ; preds = %9
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %28 = call i32 @rt2800_init_rfcsr_3883(%struct.rt2x00_dev* %27)
  br label %50

29:                                               ; preds = %9
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %31 = call i32 @rt2800_init_rfcsr_3572(%struct.rt2x00_dev* %30)
  br label %50

32:                                               ; preds = %9
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %34 = call i32 @rt2800_init_rfcsr_3593(%struct.rt2x00_dev* %33)
  br label %50

35:                                               ; preds = %9
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %37 = call i32 @rt2800_init_rfcsr_5350(%struct.rt2x00_dev* %36)
  br label %50

38:                                               ; preds = %9
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %40 = call i32 @rt2800_init_rfcsr_5390(%struct.rt2x00_dev* %39)
  br label %50

41:                                               ; preds = %9
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %43 = call i32 @rt2800_init_rfcsr_5392(%struct.rt2x00_dev* %42)
  br label %50

44:                                               ; preds = %9
  %45 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %46 = call i32 @rt2800_init_rfcsr_5592(%struct.rt2x00_dev* %45)
  br label %50

47:                                               ; preds = %9
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %49 = call i32 @rt2800_init_rfcsr_6352(%struct.rt2x00_dev* %48)
  br label %50

50:                                               ; preds = %6, %9, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14
  ret void
}

declare dso_local i64 @rt2800_is_305x_soc(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_rfcsr_305x_soc(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_rfcsr_30xx(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_rfcsr_3290(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_rfcsr_3352(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_rfcsr_3390(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_rfcsr_3883(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_rfcsr_3572(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_rfcsr_3593(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_rfcsr_5350(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_rfcsr_5390(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_rfcsr_5392(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_rfcsr_5592(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_rfcsr_6352(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
