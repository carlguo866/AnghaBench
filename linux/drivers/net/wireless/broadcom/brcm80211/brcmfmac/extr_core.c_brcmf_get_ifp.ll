; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_get_ifp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_get_ifp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i32 }
%struct.brcmf_pub = type { i64*, %struct.brcmf_if** }

@BRCMF_MAX_IFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ifidx %d out of range\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.brcmf_if* @brcmf_get_ifp(%struct.brcmf_pub* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmf_if*, align 8
  %4 = alloca %struct.brcmf_pub*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcmf_if*, align 8
  %7 = alloca i64, align 8
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @BRCMF_MAX_IFS, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10, %2
  %15 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @bphy_err(%struct.brcmf_pub* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16)
  store %struct.brcmf_if* null, %struct.brcmf_if** %3, align 8
  br label %37

18:                                               ; preds = %10
  store %struct.brcmf_if* null, %struct.brcmf_if** %6, align 8
  %19 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %20 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp uge i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %30 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %29, i32 0, i32 1
  %31 = load %struct.brcmf_if**, %struct.brcmf_if*** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.brcmf_if*, %struct.brcmf_if** %31, i64 %32
  %34 = load %struct.brcmf_if*, %struct.brcmf_if** %33, align 8
  store %struct.brcmf_if* %34, %struct.brcmf_if** %6, align 8
  br label %35

35:                                               ; preds = %28, %18
  %36 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  store %struct.brcmf_if* %36, %struct.brcmf_if** %3, align 8
  br label %37

37:                                               ; preds = %35, %14
  %38 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  ret %struct.brcmf_if* %38
}

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
