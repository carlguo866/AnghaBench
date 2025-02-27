; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_emu_madb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_emu_madb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { double }
%struct.pt_regs = type { i32 }

@DA = common dso_local global i32 0, align 4
@DB = common dso_local global i32 0, align 4
@DC = common dso_local global i32 0, align 4
@DR = common dso_local global i32 0, align 4
@FP_DECL_EX = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@_fex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32, double*, i32)* @emu_madb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_madb(%struct.pt_regs* %0, i32 %1, double* %2, i32 %3) #0 {
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %5, align 8
  store i32 %1, i32* %6, align 4
  store double* %2, double** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @DA, align 4
  %11 = call i32 @FP_DECL_D(i32 %10)
  %12 = load i32, i32* @DB, align 4
  %13 = call i32 @FP_DECL_D(i32 %12)
  %14 = load i32, i32* @DC, align 4
  %15 = call i32 @FP_DECL_D(i32 %14)
  %16 = load i32, i32* @DR, align 4
  %17 = call i32 @FP_DECL_D(i32 %16)
  %18 = load i32, i32* @FP_DECL_EX, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 3
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @DA, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i32 @FP_UNPACK_DP(i32 %25, double* %34)
  %36 = load i32, i32* @DB, align 4
  %37 = load double*, double** %7, align 8
  %38 = call i32 @FP_UNPACK_DP(i32 %36, double* %37)
  %39 = load i32, i32* @DC, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = call i32 @FP_UNPACK_DP(i32 %39, double* %48)
  %50 = load i32, i32* @DR, align 4
  %51 = load i32, i32* @DA, align 4
  %52 = load i32, i32* @DB, align 4
  %53 = call i32 @FP_MUL_D(i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* @DR, align 4
  %55 = load i32, i32* @DR, align 4
  %56 = load i32, i32* @DC, align 4
  %57 = call i32 @FP_ADD_D(i32 %54, i32 %55, i32 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* @DR, align 4
  %68 = call i32 @FP_PACK_DP(double* %66, i32 %67)
  %69 = load i32, i32* @_fex, align 4
  ret i32 %69
}

declare dso_local i32 @FP_DECL_D(i32) #1

declare dso_local i32 @FP_UNPACK_DP(i32, double*) #1

declare dso_local i32 @FP_MUL_D(i32, i32, i32) #1

declare dso_local i32 @FP_ADD_D(i32, i32, i32) #1

declare dso_local i32 @FP_PACK_DP(double*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
