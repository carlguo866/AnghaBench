; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_setband.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_setband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*, i64)* @brcms_c_setband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_setband(%struct.brcms_c_info* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %6 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %12 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %14 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %22 = call i32 @brcms_c_set_ps_ctrl(%struct.brcms_c_info* %21)
  %23 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %24 = call i32 @brcms_c_bsinit(%struct.brcms_c_info* %23)
  br label %25

25:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @brcms_c_set_ps_ctrl(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_bsinit(%struct.brcms_c_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
