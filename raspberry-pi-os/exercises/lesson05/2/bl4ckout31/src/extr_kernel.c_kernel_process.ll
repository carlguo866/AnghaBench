; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson05/2/bl4ckout31/src/extr_kernel.c_kernel_process.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson05/2/bl4ckout31/src/extr_kernel.c_kernel_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"Kernel process started. EL %d\0D\0A\00", align 1
@user_process = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Error while moving process to user mode\0A\0D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kernel_process() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @get_el()
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %2)
  %4 = call i32 @move_to_user_mode(i64 ptrtoint (i32* @user_process to i64))
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %0
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @get_el(...) #1

declare dso_local i32 @move_to_user_mode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
