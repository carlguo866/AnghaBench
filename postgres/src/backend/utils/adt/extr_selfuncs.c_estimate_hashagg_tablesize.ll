; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_estimate_hashagg_tablesize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_selfuncs.c_estimate_hashagg_tablesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i64 }

@SizeofMinimalTupleHeader = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @estimate_hashagg_tablesize(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, double %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store double %2, double* %6, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call double @MAXALIGN(i32 %12)
  %14 = load i32, i32* @SizeofMinimalTupleHeader, align 4
  %15 = call double @MAXALIGN(i32 %14)
  %16 = fadd double %13, %15
  store double %16, double* %7, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sitofp i64 %19 to double
  %21 = load double, double* %7, align 8
  %22 = fadd double %21, %20
  store double %22, double* %7, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @hash_agg_entry_size(i32 %25)
  %27 = sitofp i64 %26 to double
  %28 = load double, double* %7, align 8
  %29 = fadd double %28, %27
  store double %29, double* %7, align 8
  %30 = load double, double* %7, align 8
  %31 = load double, double* %6, align 8
  %32 = fmul double %30, %31
  ret double %32
}

declare dso_local double @MAXALIGN(i32) #1

declare dso_local i64 @hash_agg_entry_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
