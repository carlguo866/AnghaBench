; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_rev32.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_rev32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@bpf2a32 = common dso_local global i32** null, align 8
@TMP_REG_2 = common dso_local global i64 0, align 8
@SRTYPE_LSR = common dso_local global i32 0, align 4
@ARM_IP = common dso_local global i32 0, align 4
@SRTYPE_LSL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.jit_ctx*)* @emit_rev32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_rev32(i32 %0, i32 %1, %struct.jit_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.jit_ctx*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.jit_ctx* %2, %struct.jit_ctx** %6, align 8
  %8 = load i32**, i32*** @bpf2a32, align 8
  %9 = load i64, i64* @TMP_REG_2, align 8
  %10 = getelementptr inbounds i32*, i32** %8, i64 %9
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ARM_AND_I(i32 %14, i32 %15, i32 255)
  %17 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %18 = call i32 @emit(i32 %16, %struct.jit_ctx* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SRTYPE_LSR, align 4
  %24 = call i32 @ARM_MOV_SI(i32 %21, i32 %22, i32 %23, i32 24)
  %25 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %26 = call i32 @emit(i32 %24, %struct.jit_ctx* %25)
  %27 = load i32, i32* @ARM_IP, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SRTYPE_LSL, align 4
  %35 = call i32 @ARM_ORR_SI(i32 %27, i32 %30, i32 %33, i32 %34, i32 24)
  %36 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %37 = call i32 @emit(i32 %35, %struct.jit_ctx* %36)
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SRTYPE_LSR, align 4
  %43 = call i32 @ARM_MOV_SI(i32 %40, i32 %41, i32 %42, i32 8)
  %44 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %45 = call i32 @emit(i32 %43, %struct.jit_ctx* %44)
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ARM_AND_I(i32 %48, i32 %51, i32 255)
  %53 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %54 = call i32 @emit(i32 %52, %struct.jit_ctx* %53)
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @SRTYPE_LSR, align 4
  %60 = call i32 @ARM_MOV_SI(i32 %57, i32 %58, i32 %59, i32 16)
  %61 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %62 = call i32 @emit(i32 %60, %struct.jit_ctx* %61)
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ARM_AND_I(i32 %65, i32 %68, i32 255)
  %70 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %71 = call i32 @emit(i32 %69, %struct.jit_ctx* %70)
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SRTYPE_LSL, align 4
  %79 = call i32 @ARM_MOV_SI(i32 %74, i32 %77, i32 %78, i32 8)
  %80 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %81 = call i32 @emit(i32 %79, %struct.jit_ctx* %80)
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %7, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SRTYPE_LSL, align 4
  %92 = call i32 @ARM_ORR_SI(i32 %84, i32 %87, i32 %90, i32 %91, i32 16)
  %93 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %94 = call i32 @emit(i32 %92, %struct.jit_ctx* %93)
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @ARM_IP, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ARM_ORR_R(i32 %95, i32 %96, i32 %99)
  %101 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %102 = call i32 @emit(i32 %100, %struct.jit_ctx* %101)
  ret void
}

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @ARM_AND_I(i32, i32, i32) #1

declare dso_local i32 @ARM_MOV_SI(i32, i32, i32, i32) #1

declare dso_local i32 @ARM_ORR_SI(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ARM_ORR_R(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
