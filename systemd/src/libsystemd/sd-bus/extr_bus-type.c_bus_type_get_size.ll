; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-type.c_bus_type_get_size.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-bus/extr_bus-type.c_bus_type_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_type_get_size(i8 signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %10 [
    i32 136, label %6
    i32 134, label %7
    i32 131, label %7
    i32 137, label %8
    i32 133, label %8
    i32 130, label %8
    i32 128, label %8
    i32 132, label %9
    i32 129, label %9
    i32 135, label %9
  ]

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %13

7:                                                ; preds = %1, %1
  store i32 2, i32* %2, align 4
  br label %13

8:                                                ; preds = %1, %1, %1, %1
  store i32 4, i32* %2, align 4
  br label %13

9:                                                ; preds = %1, %1, %1
  store i32 8, i32* %2, align 4
  br label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %13

13:                                               ; preds = %10, %9, %8, %7, %6
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
