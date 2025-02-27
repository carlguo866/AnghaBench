; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_fork.c_copy_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_fork.c_copy_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }

@PF_SUPERPRIV = common dso_local global i64 0, align 8
@PF_FORKNOEXEC = common dso_local global i64 0, align 8
@PF_STARTING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.task_struct*)* @copy_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_flags(i64 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %7 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* @PF_SUPERPRIV, align 8
  %10 = xor i64 %9, -1
  %11 = load i64, i64* %5, align 8
  %12 = and i64 %11, %10
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* @PF_FORKNOEXEC, align 8
  %14 = load i64, i64* %5, align 8
  %15 = or i64 %14, %13
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* @PF_STARTING, align 8
  %17 = load i64, i64* %5, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %23 = call i32 @clear_freeze_flag(%struct.task_struct* %22)
  ret void
}

declare dso_local i32 @clear_freeze_flag(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
