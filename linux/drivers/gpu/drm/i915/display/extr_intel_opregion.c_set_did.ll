; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_set_did.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_set_did.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_opregion = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8**, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_opregion*, i32, i8*)* @set_did to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_did(%struct.intel_opregion* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.intel_opregion*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.intel_opregion* %0, %struct.intel_opregion** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.intel_opregion*, %struct.intel_opregion** %4, align 8
  %9 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i8**, i8*** %11, align 8
  %13 = call i32 @ARRAY_SIZE(i8** %12)
  %14 = icmp slt i32 %7, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.intel_opregion*, %struct.intel_opregion** %4, align 8
  %18 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i8**, i8*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  store i8* %16, i8** %24, align 8
  br label %56

25:                                               ; preds = %3
  %26 = load %struct.intel_opregion*, %struct.intel_opregion** %4, align 8
  %27 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = call i32 @ARRAY_SIZE(i8** %30)
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.intel_opregion*, %struct.intel_opregion** %4, align 8
  %36 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8**, i8*** %38, align 8
  %40 = call i32 @ARRAY_SIZE(i8** %39)
  %41 = icmp sge i32 %34, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %25
  br label %56

46:                                               ; preds = %25
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.intel_opregion*, %struct.intel_opregion** %4, align 8
  %49 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  store i8* %47, i8** %55, align 8
  br label %56

56:                                               ; preds = %45, %46, %15
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
