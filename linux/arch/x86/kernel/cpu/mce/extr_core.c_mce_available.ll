; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_available.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.cpuinfo_x86 = type { i32 }

@mca_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@X86_FEATURE_MCE = common dso_local global i32 0, align 4
@X86_FEATURE_MCA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mce_available(%struct.cpuinfo_x86* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpuinfo_x86*, align 8
  store %struct.cpuinfo_x86* %0, %struct.cpuinfo_x86** %3, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mca_cfg, i32 0, i32 0), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %20

7:                                                ; preds = %1
  %8 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %9 = load i32, i32* @X86_FEATURE_MCE, align 4
  %10 = call i64 @cpu_has(%struct.cpuinfo_x86* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.cpuinfo_x86*, %struct.cpuinfo_x86** %3, align 8
  %14 = load i32, i32* @X86_FEATURE_MCA, align 4
  %15 = call i64 @cpu_has(%struct.cpuinfo_x86* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi i1 [ false, %7 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %17, %6
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @cpu_has(%struct.cpuinfo_x86*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
