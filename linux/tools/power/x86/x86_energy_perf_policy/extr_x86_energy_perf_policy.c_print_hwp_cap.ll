; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_print_hwp_cap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/x86_energy_perf_policy/extr_x86_energy_perf_policy.c_print_hwp_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msr_hwp_cap = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"cpu%d: \00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"HWP_CAP: low %d eff %d guar %d high %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_hwp_cap(i32 %0, %struct.msr_hwp_cap* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msr_hwp_cap*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.msr_hwp_cap* %1, %struct.msr_hwp_cap** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %9, %3
  %13 = load %struct.msr_hwp_cap*, %struct.msr_hwp_cap** %5, align 8
  %14 = getelementptr inbounds %struct.msr_hwp_cap, %struct.msr_hwp_cap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.msr_hwp_cap*, %struct.msr_hwp_cap** %5, align 8
  %17 = getelementptr inbounds %struct.msr_hwp_cap, %struct.msr_hwp_cap* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.msr_hwp_cap*, %struct.msr_hwp_cap** %5, align 8
  %20 = getelementptr inbounds %struct.msr_hwp_cap, %struct.msr_hwp_cap* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.msr_hwp_cap*, %struct.msr_hwp_cap** %5, align 8
  %23 = getelementptr inbounds %struct.msr_hwp_cap, %struct.msr_hwp_cap* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24)
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
