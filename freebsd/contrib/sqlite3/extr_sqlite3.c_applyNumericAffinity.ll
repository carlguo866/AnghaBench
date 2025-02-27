; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_applyNumericAffinity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_applyNumericAffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { double, i32 }

@MEM_Str = common dso_local global i32 0, align 4
@MEM_Int = common dso_local global i32 0, align 4
@MEM_Real = common dso_local global i32 0, align 4
@MEM_IntReal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @applyNumericAffinity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applyNumericAffinity(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MEM_Str, align 4
  %15 = load i32, i32* @MEM_Int, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MEM_Real, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MEM_IntReal, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %13, %20
  %22 = load i32, i32* @MEM_Str, align 4
  %23 = icmp eq i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @sqlite3AtoF(i32 %28, double* %5, i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %77

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = load double, double* %5, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = call i64 @alsoAnInt(%struct.TYPE_7__* %41, double %42, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i32, i32* @MEM_Int, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %70

54:                                               ; preds = %40, %37
  %55 = load double, double* %5, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store double %55, double* %58, align 8
  %59 = load i32, i32* @MEM_Real, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = call i32 @sqlite3VdbeIntegerAffinity(%struct.TYPE_7__* %67)
  br label %69

69:                                               ; preds = %66, %54
  br label %70

70:                                               ; preds = %69, %48
  %71 = load i32, i32* @MEM_Str, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %70, %36
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3AtoF(i32, double*, i32, i32) #1

declare dso_local i64 @alsoAnInt(%struct.TYPE_7__*, double, i32*) #1

declare dso_local i32 @sqlite3VdbeIntegerAffinity(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
