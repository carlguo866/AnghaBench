; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_srao_decode_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_srao_decode_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.mce = type { i64, i64 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@MCE_AO_SEVERITY = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @srao_decode_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srao_decode_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mce*, align 8
  %9 = alloca i64, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.mce*
  store %struct.mce* %11, %struct.mce** %8, align 8
  %12 = load %struct.mce*, %struct.mce** %8, align 8
  %13 = icmp ne %struct.mce* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %15, i32* %4, align 4
  br label %41

16:                                               ; preds = %3
  %17 = load %struct.mce*, %struct.mce** %8, align 8
  %18 = call i64 @mce_usable_address(%struct.mce* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load %struct.mce*, %struct.mce** %8, align 8
  %22 = getelementptr inbounds %struct.mce, %struct.mce* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MCE_AO_SEVERITY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.mce*, %struct.mce** %8, align 8
  %28 = getelementptr inbounds %struct.mce, %struct.mce* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @memory_failure(i64 %32, i32 0)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @set_mce_nospec(i64 %36)
  br label %38

38:                                               ; preds = %35, %26
  br label %39

39:                                               ; preds = %38, %20, %16
  %40 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @mce_usable_address(%struct.mce*) #1

declare dso_local i32 @memory_failure(i64, i32) #1

declare dso_local i32 @set_mce_nospec(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
