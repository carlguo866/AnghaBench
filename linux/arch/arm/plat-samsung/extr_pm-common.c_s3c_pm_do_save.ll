; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/plat-samsung/extr_pm-common.c_s3c_pm_do_save.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/plat-samsung/extr_pm-common.c_s3c_pm_do_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sleep_save = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"saved %p value %08lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s3c_pm_do_save(%struct.sleep_save* %0, i32 %1) #0 {
  %3 = alloca %struct.sleep_save*, align 8
  %4 = alloca i32, align 4
  store %struct.sleep_save* %0, %struct.sleep_save** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %22, %2
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = load %struct.sleep_save*, %struct.sleep_save** %3, align 8
  %10 = getelementptr inbounds %struct.sleep_save, %struct.sleep_save* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @readl_relaxed(i32 %11)
  %13 = load %struct.sleep_save*, %struct.sleep_save** %3, align 8
  %14 = getelementptr inbounds %struct.sleep_save, %struct.sleep_save* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.sleep_save*, %struct.sleep_save** %3, align 8
  %16 = getelementptr inbounds %struct.sleep_save, %struct.sleep_save* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sleep_save*, %struct.sleep_save** %3, align 8
  %19 = getelementptr inbounds %struct.sleep_save, %struct.sleep_save* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @S3C_PMDBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %8
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %4, align 4
  %25 = load %struct.sleep_save*, %struct.sleep_save** %3, align 8
  %26 = getelementptr inbounds %struct.sleep_save, %struct.sleep_save* %25, i32 1
  store %struct.sleep_save* %26, %struct.sleep_save** %3, align 8
  br label %5

27:                                               ; preds = %5
  ret void
}

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @S3C_PMDBG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
