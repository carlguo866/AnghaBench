; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_aram.c___ARWriteDMA.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_aram.c___ARWriteDMA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_dspReg = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @__ARWriteDMA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ARWriteDMA(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** @_dspReg, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 16
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, -1024
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @_SHIFTR(i32 %11, i32 16, i32 16)
  %13 = or i32 %10, %12
  %14 = load i32*, i32** @_dspReg, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 16
  store i32 %13, i32* %15, align 4
  %16 = load i32*, i32** @_dspReg, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 17
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, -65505
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @_SHIFTR(i32 %20, i32 0, i32 16)
  %22 = or i32 %19, %21
  %23 = load i32*, i32** @_dspReg, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 17
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** @_dspReg, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 18
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, -1024
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @_SHIFTR(i32 %29, i32 16, i32 16)
  %31 = or i32 %28, %30
  %32 = load i32*, i32** @_dspReg, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 18
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** @_dspReg, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 19
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, -65505
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @_SHIFTR(i32 %38, i32 0, i32 16)
  %40 = or i32 %37, %39
  %41 = load i32*, i32** @_dspReg, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 19
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** @_dspReg, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 20
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, -32769
  %47 = load i32*, i32** @_dspReg, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 20
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** @_dspReg, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 20
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, -1024
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @_SHIFTR(i32 %53, i32 16, i32 16)
  %55 = or i32 %52, %54
  %56 = load i32*, i32** @_dspReg, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 20
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** @_dspReg, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 21
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, -65505
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @_SHIFTR(i32 %62, i32 0, i32 16)
  %64 = or i32 %61, %63
  %65 = load i32*, i32** @_dspReg, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 21
  store i32 %64, i32* %66, align 4
  %67 = call i32 (...) @__ARWaitDma()
  %68 = call i32 (...) @__ARClearInterrupt()
  ret void
}

declare dso_local i32 @_SHIFTR(i32, i32, i32) #1

declare dso_local i32 @__ARWaitDma(...) #1

declare dso_local i32 @__ARClearInterrupt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
