; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_chipmatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_chipmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"unknown host type: %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcms_c_chipmatch(%struct.bcma_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_device*, align 8
  store %struct.bcma_device* %0, %struct.bcma_device** %3, align 8
  %4 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %5 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %15 [
    i32 129, label %9
    i32 128, label %12
  ]

9:                                                ; preds = %1
  %10 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %11 = call i32 @brcms_c_chipmatch_pci(%struct.bcma_device* %10)
  store i32 %11, i32* %2, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %14 = call i32 @brcms_c_chipmatch_soc(%struct.bcma_device* %13)
  store i32 %14, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %17 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %15, %12, %9
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @brcms_c_chipmatch_pci(%struct.bcma_device*) #1

declare dso_local i32 @brcms_c_chipmatch_soc(%struct.bcma_device*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
