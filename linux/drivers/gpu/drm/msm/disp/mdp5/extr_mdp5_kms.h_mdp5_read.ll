; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.h_mdp5_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.h_mdp5_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_kms = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mdp5_kms*, i64)* @mdp5_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mdp5_read(%struct.mdp5_kms* %0, i64 %1) #0 {
  %3 = alloca %struct.mdp5_kms*, align 8
  %4 = alloca i64, align 8
  store %struct.mdp5_kms* %0, %struct.mdp5_kms** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %6 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sle i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %12 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @msm_readl(i64 %15)
  ret i64 %16
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @msm_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
