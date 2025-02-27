; ModuleID = '/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_set_tdp_level_msr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/x86/intel-speed-select/extr_isst-core.c_isst_set_tdp_level_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"cpu: tdp_level via MSR %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"cpu: tdp_locked %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"cpu: tdp_level via MSR successful %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isst_set_tdp_level_msr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (i8*, i32, ...) @debug_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @isst_get_config_tdp_lock_status(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (i8*, i32, ...) @debug_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  store i32 -1, i32* %3, align 4
  br label %34

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %34

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @isst_send_msr_command(i32 %24, i32 1611, i32 1, i64* %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %34

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i8*, i32, ...) @debug_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %28, %22, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @debug_printf(i8*, i32, ...) #1

declare dso_local i64 @isst_get_config_tdp_lock_status(i32) #1

declare dso_local i32 @isst_send_msr_command(i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
