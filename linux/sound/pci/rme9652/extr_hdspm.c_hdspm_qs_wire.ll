; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_qs_wire.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_qs_wire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i32 }

@HDSPM_QS_DoubleWire = common dso_local global i32 0, align 4
@HDSPM_QS_QuadWire = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdspm*)* @hdspm_qs_wire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspm_qs_wire(%struct.hdspm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdspm*, align 8
  store %struct.hdspm* %0, %struct.hdspm** %3, align 8
  %4 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %5 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @HDSPM_QS_DoubleWire, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %13 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HDSPM_QS_QuadWire, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 2, i32* %2, align 4
  br label %20

19:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %18, %10
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
