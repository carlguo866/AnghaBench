; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev_utils.c_evdev_support_all_known_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev_utils.c_evdev_support_all_known_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdev_dev = type { i32 }

@KEY_RESERVED = common dso_local global i64 0, align 8
@evdev_at_set1_scancodes = common dso_local global i64* null, align 8
@NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evdev_support_all_known_keys(%struct.evdev_dev* %0) #0 {
  %2 = alloca %struct.evdev_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.evdev_dev* %0, %struct.evdev_dev** %2, align 8
  %4 = load i64, i64* @KEY_RESERVED, align 8
  store i64 %4, i64* %3, align 8
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64*, i64** @evdev_at_set1_scancodes, align 8
  %8 = call i64 @nitems(i64* %7)
  %9 = icmp ult i64 %6, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %5
  %11 = load i64*, i64** @evdev_at_set1_scancodes, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NONE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load %struct.evdev_dev*, %struct.evdev_dev** %2, align 8
  %19 = load i64*, i64** @evdev_at_set1_scancodes, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @evdev_support_key(%struct.evdev_dev* %18, i64 %22)
  br label %24

24:                                               ; preds = %17, %10
  br label %25

25:                                               ; preds = %24
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %3, align 8
  br label %5

28:                                               ; preds = %5
  ret void
}

declare dso_local i64 @nitems(i64*) #1

declare dso_local i32 @evdev_support_key(%struct.evdev_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
