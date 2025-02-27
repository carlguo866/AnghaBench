; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_safe_to_clear_referenced.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_safe_to_clear_referenced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@TRUE = common dso_local global i32 0, align 4
@PT_EPT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"invalid pm_type %d\00", align 1
@EPT_PG_WRITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EPT_PG_EXECUTE = common dso_local global i32 0, align 4
@PMAP_SUPPORTS_EXEC_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @safe_to_clear_referenced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_to_clear_referenced(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = call i32 @pmap_emulate_ad_bits(%struct.TYPE_4__* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* %3, align 4
  br label %45

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PT_EPT, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %17, i8* %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @EPT_PG_WRITE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %11
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %3, align 4
  br label %45

29:                                               ; preds = %11
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @EPT_PG_EXECUTE, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PMAP_SUPPORTS_EXEC_ONLY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34, %29
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %41, %27, %9
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @pmap_emulate_ad_bits(%struct.TYPE_4__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
