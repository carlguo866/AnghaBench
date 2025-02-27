; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_spdif_sync_check.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_spdif_sync_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32 }

@HDSP_statusRegister = common dso_local global i32 0, align 4
@HDSP_SPDIFErrorFlag = common dso_local global i32 0, align 4
@HDSP_SPDIFSync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*)* @hdsp_spdif_sync_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_spdif_sync_check(%struct.hdsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdsp*, align 8
  %4 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %3, align 8
  %5 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %6 = load i32, i32* @HDSP_statusRegister, align 4
  %7 = call i32 @hdsp_read(%struct.hdsp* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @HDSP_SPDIFErrorFlag, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @HDSP_SPDIFSync, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 2, i32* %2, align 4
  br label %20

19:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %18, %12
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @hdsp_read(%struct.hdsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
