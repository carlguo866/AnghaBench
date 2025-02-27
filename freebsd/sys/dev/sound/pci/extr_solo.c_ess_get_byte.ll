; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_get_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_solo.c_ess_get_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ess_info = type { i32 }

@DSP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ess_info*)* @ess_get_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ess_get_byte(%struct.ess_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ess_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ess_info* %0, %struct.ess_info** %3, align 8
  store i32 1000, i32* %4, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %5
  %9 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %10 = call i32 @ess_rd(%struct.ess_info* %9, i32 12)
  %11 = and i32 %10, 64
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.ess_info*, %struct.ess_info** %3, align 8
  %15 = load i32, i32* @DSP_READ, align 4
  %16 = call i32 @ess_rd(%struct.ess_info* %14, i32 %15)
  store i32 %16, i32* %2, align 4
  br label %24

17:                                               ; preds = %8
  %18 = call i32 @DELAY(i32 20)
  br label %19

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %4, align 4
  br label %5

23:                                               ; preds = %5
  store i32 -1, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @ess_rd(%struct.ess_info*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
