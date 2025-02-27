; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_try_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_vmem.c_vmem_try_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i32 (%struct.TYPE_10__*, i32)* }

@M_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64, i64, i32)* @vmem_try_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmem_try_fetch(%struct.TYPE_10__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %12 = call i32 @VMEM_ASSERT_LOCKED(%struct.TYPE_10__* %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @vmem_import(%struct.TYPE_10__* %13, i64 %14, i64 %15, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %82

20:                                               ; preds = %4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 3
  %28 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.TYPE_10__*, i32)* %28, null
  br i1 %29, label %30, label %73

30:                                               ; preds = %25, %20
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  store i64 %37, i64* %10, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = call i32 @VMEM_UNLOCK(%struct.TYPE_10__* %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = call i32 @qc_drain(%struct.TYPE_10__* %45)
  br label %47

47:                                               ; preds = %44, %30
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %49, align 8
  %51 = icmp ne i32 (%struct.TYPE_10__*, i32)* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 %55(%struct.TYPE_10__* %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %47
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = call i32 @VMEM_LOCK(%struct.TYPE_10__* %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = load i64, i64* %10, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  store i32 1, i32* %5, align 4
  br label %82

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %25
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @M_NOWAIT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %82

79:                                               ; preds = %73
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = call i32 @VMEM_CONDVAR_WAIT(%struct.TYPE_10__* %80)
  store i32 1, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %78, %71, %19
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @VMEM_ASSERT_LOCKED(%struct.TYPE_10__*) #1

declare dso_local i64 @vmem_import(%struct.TYPE_10__*, i64, i64, i32) #1

declare dso_local i32 @VMEM_UNLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @qc_drain(%struct.TYPE_10__*) #1

declare dso_local i32 @VMEM_LOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @VMEM_CONDVAR_WAIT(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
