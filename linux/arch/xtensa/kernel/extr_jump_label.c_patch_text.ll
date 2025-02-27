; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_jump_label.c_patch_text.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_jump_label.c_patch_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.patch = type { i64, i64, i8*, i32 }

@CONFIG_SMP = common dso_local global i32 0, align 4
@patch_text_stop_machine = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*, i64)* @patch_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @patch_text(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.patch, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @CONFIG_SMP, align 4
  %10 = call i64 @IS_ENABLED(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.patch, %struct.patch* %7, i32 0, i32 0
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds %struct.patch, %struct.patch* %7, i32 0, i32 1
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %15, align 8
  %17 = getelementptr inbounds %struct.patch, %struct.patch* %7, i32 0, i32 2
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds %struct.patch, %struct.patch* %7, i32 0, i32 3
  %20 = call i32 @ATOMIC_INIT(i32 0)
  store i32 %20, i32* %19, align 8
  %21 = load i32, i32* @patch_text_stop_machine, align 4
  %22 = call i32 @stop_machine_cpuslocked(i32 %21, %struct.patch* %7, i32* null)
  br label %32

23:                                               ; preds = %3
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @local_irq_save(i64 %24)
  %26 = load i64, i64* %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @local_patch_text(i64 %26, i8* %27, i64 %28)
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @local_irq_restore(i64 %30)
  br label %32

32:                                               ; preds = %23, %12
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @ATOMIC_INIT(i32) #1

declare dso_local i32 @stop_machine_cpuslocked(i32, %struct.patch*, i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_patch_text(i64, i8*, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
