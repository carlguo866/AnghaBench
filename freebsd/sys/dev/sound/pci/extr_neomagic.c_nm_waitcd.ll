; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nm_waitcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_neomagic.c_nm_waitcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @nm_waitcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nm_waitcd(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  store i32 10, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i32, i32* %3, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %3, align 4
  %8 = icmp sgt i32 %6, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %5
  %10 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %11 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %12 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @nm_rd(%struct.sc_info* %10, i32 %13, i32 2)
  %15 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %16 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %9
  %21 = call i32 @DELAY(i32 100)
  br label %23

22:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %24

23:                                               ; preds = %20
  br label %5

24:                                               ; preds = %22, %5
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @nm_rd(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
