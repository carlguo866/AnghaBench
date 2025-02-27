; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_ioctl_set_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_ioctl_set_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.tap_queue* }
%struct.tap_queue = type { i32 }
%struct.tap_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IFF_ATTACH_QUEUE = common dso_local global i32 0, align 4
@IFF_DETACH_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @tap_ioctl_set_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tap_ioctl_set_queue(%struct.file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tap_queue*, align 8
  %7 = alloca %struct.tap_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.tap_queue*, %struct.tap_queue** %10, align 8
  store %struct.tap_queue* %11, %struct.tap_queue** %6, align 8
  %12 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %13 = call %struct.tap_dev* @tap_get_tap_dev(%struct.tap_queue* %12)
  store %struct.tap_dev* %13, %struct.tap_dev** %7, align 8
  %14 = load %struct.tap_dev*, %struct.tap_dev** %7, align 8
  %15 = icmp ne %struct.tap_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %45

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @IFF_ATTACH_QUEUE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.tap_dev*, %struct.tap_dev** %7, align 8
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %28 = call i32 @tap_enable_queue(%struct.tap_dev* %25, %struct.file* %26, %struct.tap_queue* %27)
  store i32 %28, i32* %8, align 4
  br label %41

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @IFF_DETACH_QUEUE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.tap_queue*, %struct.tap_queue** %6, align 8
  %36 = call i32 @tap_disable_queue(%struct.tap_queue* %35)
  store i32 %36, i32* %8, align 4
  br label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %24
  %42 = load %struct.tap_dev*, %struct.tap_dev** %7, align 8
  %43 = call i32 @tap_put_tap_dev(%struct.tap_dev* %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.tap_dev* @tap_get_tap_dev(%struct.tap_queue*) #1

declare dso_local i32 @tap_enable_queue(%struct.tap_dev*, %struct.file*, %struct.tap_queue*) #1

declare dso_local i32 @tap_disable_queue(%struct.tap_queue*) #1

declare dso_local i32 @tap_put_tap_dev(%struct.tap_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
