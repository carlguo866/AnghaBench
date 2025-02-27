; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_emu_lnebr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/math-emu/extr_math.c_emu_lnebr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.pt_regs = type { i32 }

@SA = common dso_local global i32 0, align 4
@SR = common dso_local global i32 0, align 4
@FP_DECL_EX = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@SA_s = common dso_local global i64 0, align 8
@SR_c = common dso_local global i32 0, align 4
@SR_s = common dso_local global i32 0, align 4
@_fex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32, i32)* @emu_lnebr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_lnebr(%struct.pt_regs* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @SA, align 4
  %9 = call i32 @FP_DECL_S(i32 %8)
  %10 = load i32, i32* @SR, align 4
  %11 = call i32 @FP_DECL_S(i32 %10)
  %12 = load i32, i32* @FP_DECL_EX, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 3
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @SA, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = call i32 @FP_UNPACK_SP(i32 %19, i32* %28)
  %30 = load i64, i64* @SA_s, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %3
  %33 = load i32, i32* @SR, align 4
  %34 = load i32, i32* @SA, align 4
  %35 = call i32 @FP_NEG_S(i32 %33, i32 %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* @SR, align 4
  %46 = call i32 @FP_PACK_SP(i32* %44, i32 %45)
  br label %67

47:                                               ; preds = %3
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %57, i32* %66, align 4
  br label %67

67:                                               ; preds = %47, %32
  %68 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %69 = load i32, i32* @SR_c, align 4
  %70 = load i32, i32* @SR_s, align 4
  %71 = call i32 @emu_set_CC_cs(%struct.pt_regs* %68, i32 %69, i32 %70)
  %72 = load i32, i32* @_fex, align 4
  ret i32 %72
}

declare dso_local i32 @FP_DECL_S(i32) #1

declare dso_local i32 @FP_UNPACK_SP(i32, i32*) #1

declare dso_local i32 @FP_NEG_S(i32, i32) #1

declare dso_local i32 @FP_PACK_SP(i32*, i32) #1

declare dso_local i32 @emu_set_CC_cs(%struct.pt_regs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
