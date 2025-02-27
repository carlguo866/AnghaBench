; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_opregion.c_querying_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_opregion.c_querying_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEL_GVT_OPREGION_SCIC_F_GETBIOSDATA = common dso_local global i64 0, align 8
@INTEL_GVT_OPREGION_SCIC_SF_SUPPRTEDCALLS = common dso_local global i64 0, align 8
@INTEL_GVT_OPREGION_SCIC_SF_REQEUSTEDCALLBACKS = common dso_local global i64 0, align 8
@INTEL_GVT_OPREGION_SCIC_F_GETBIOSCALLBACKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @querying_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @querying_capabilities(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @GVT_OPREGION_FUNC(i64 %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @GVT_OPREGION_SUBFUNC(i64 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @INTEL_GVT_OPREGION_SCIC_F_GETBIOSDATA, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @INTEL_GVT_OPREGION_SCIC_SF_SUPPRTEDCALLS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %33, label %17

17:                                               ; preds = %13, %1
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @INTEL_GVT_OPREGION_SCIC_F_GETBIOSDATA, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @INTEL_GVT_OPREGION_SCIC_SF_REQEUSTEDCALLBACKS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %21, %17
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @INTEL_GVT_OPREGION_SCIC_F_GETBIOSCALLBACKS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @INTEL_GVT_OPREGION_SCIC_SF_SUPPRTEDCALLS, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %21, %13
  store i32 1, i32* %2, align 4
  br label %35

34:                                               ; preds = %29, %25
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @GVT_OPREGION_FUNC(i64) #1

declare dso_local i64 @GVT_OPREGION_SUBFUNC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
