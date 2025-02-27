; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_smp.c_native_stop_other_cpus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_smp.c_native_stop_other_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }

@reboot_force = common dso_local global i64 0, align 8
@apic = common dso_local global %struct.TYPE_2__* null, align 8
@REBOOT_VECTOR = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @native_stop_other_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @native_stop_other_cpus(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @reboot_force, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %41

8:                                                ; preds = %1
  %9 = call i32 (...) @num_online_cpus()
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @apic, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32)*, i32 (i32)** %13, align 8
  %15 = load i32, i32* @REBOOT_VECTOR, align 4
  %16 = call i32 %14(i32 %15)
  %17 = load i64, i64* @USEC_PER_SEC, align 8
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %32, %11
  %19 = call i32 (...) @num_online_cpus()
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %4, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %4, align 8
  %27 = icmp ne i64 %25, 0
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ true, %21 ], [ %27, %24 ]
  br label %30

30:                                               ; preds = %28, %18
  %31 = phi i1 [ false, %18 ], [ %29, %28 ]
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = call i32 @udelay(i32 1)
  br label %18

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %34, %8
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @local_irq_save(i64 %36)
  %38 = call i32 (...) @disable_local_APIC()
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @local_irq_restore(i64 %39)
  br label %41

41:                                               ; preds = %35, %7
  ret void
}

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @disable_local_APIC(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
