; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_mce_amd.c_f12h_mc0_mce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_mce_amd.c_f12h_mc0_mce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LL_L2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"during L1 linefill from L2.\0A\00", align 1
@LL_L1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Data/Tag %s error.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @f12h_mc0_mce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f12h_mc0_mce(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @MEM_ERROR(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @LL(i32 %11)
  store i64 %12, i64* %6, align 8
  store i32 1, i32* %5, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @LL_L2, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %28

18:                                               ; preds = %10
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @LL_L1, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @R4_MSG(i32 %23)
  %25 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %27

26:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %22
  br label %28

28:                                               ; preds = %27, %16
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i64 @MEM_ERROR(i32) #1

declare dso_local i64 @LL(i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @R4_MSG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
