; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_mdp5_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_kms = type { i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp5_enable(%struct.mdp5_kms* %0) #0 {
  %2 = alloca %struct.mdp5_kms*, align 8
  store %struct.mdp5_kms* %0, %struct.mdp5_kms** %2, align 8
  %3 = call i32 @DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.mdp5_kms*, %struct.mdp5_kms** %2, align 8
  %5 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %5, align 8
  %8 = load %struct.mdp5_kms*, %struct.mdp5_kms** %2, align 8
  %9 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @clk_prepare_enable(i64 %10)
  %12 = load %struct.mdp5_kms*, %struct.mdp5_kms** %2, align 8
  %13 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @clk_prepare_enable(i64 %14)
  %16 = load %struct.mdp5_kms*, %struct.mdp5_kms** %2, align 8
  %17 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @clk_prepare_enable(i64 %18)
  %20 = load %struct.mdp5_kms*, %struct.mdp5_kms** %2, align 8
  %21 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.mdp5_kms*, %struct.mdp5_kms** %2, align 8
  %26 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @clk_prepare_enable(i64 %27)
  br label %29

29:                                               ; preds = %24, %1
  ret i32 0
}

declare dso_local i32 @DBG(i8*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
