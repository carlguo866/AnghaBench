; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_term.c_rc_evaluate_term.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_term.c_rc_evaluate_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { double }

@RC_OPERAND_FP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rc_evaluate_term(%struct.TYPE_6__* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %13 = load i32, i32* %7, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @rc_evaluate_operand(%struct.TYPE_7__* %12, i32 %13, i8* %14, i32* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RC_OPERAND_FP, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @rc_evaluate_operand(%struct.TYPE_7__* %26, i32 %27, i8* %28, i32* %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = xor i32 %30, %33
  %35 = mul i32 %24, %34
  store i32 %35, i32* %5, align 4
  br label %46

36:                                               ; preds = %4
  %37 = load i32, i32* %10, align 4
  %38 = uitofp i32 %37 to double
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = fmul double %38, %43
  %45 = fptoui double %44 to i32
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %36, %23
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @rc_evaluate_operand(%struct.TYPE_7__*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
