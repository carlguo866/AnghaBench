; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_vmmouse.c_vmmouse_check_hypervisor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_vmmouse.c_vmmouse_check_hypervisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vmmouse_supported_hypervisors = common dso_local global i64* null, align 8
@x86_hyper_type = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vmmouse_check_hypervisor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmmouse_check_hypervisor() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %18, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i64*, i64** @vmmouse_supported_hypervisors, align 8
  %6 = call i32 @ARRAY_SIZE(i64* %5)
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  %9 = load i64*, i64** @vmmouse_supported_hypervisors, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @x86_hyper_type, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store i32 1, i32* %1, align 4
  br label %22

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %3

21:                                               ; preds = %3
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
