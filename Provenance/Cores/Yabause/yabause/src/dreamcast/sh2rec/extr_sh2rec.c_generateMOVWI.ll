; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateMOVWI.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/sh2rec/extr_sh2rec.c_generateMOVWI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64 }

@R4 = common dso_local global i32 0, align 4
@R9 = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@R_PR = common dso_local global i32 0, align 4
@R10 = common dso_local global i32 0, align 4
@OP_EXTSW = common dso_local global i32 0, align 4
@R8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_14__*)* @generateMOVWI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateMOVWI(i32 %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @INSTRUCTION_B(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @INSTRUCTION_CD(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 4
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 %16, 1
  %18 = add nsw i32 %15, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = and i32 %22, 3
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %2
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = load i32, i32* @R4, align 4
  %28 = call i32 @emitMOVLI(%struct.TYPE_14__* %26, i32 1, i32 %27)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = call i32 @emitBRA(%struct.TYPE_14__* %29, i32 2)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = load i32, i32* @R9, align 4
  %33 = load i32, i32* @R0, align 4
  %34 = call i32 @emitMOVLL4(%struct.TYPE_14__* %31, i32 %32, i32 1, i32 %33)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @emit32(%struct.TYPE_14__* %35, i32 %36)
  br label %53

38:                                               ; preds = %2
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = load i32, i32* @R4, align 4
  %41 = call i32 @emitMOVLI(%struct.TYPE_14__* %39, i32 1, i32 %40)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = call i32 @emitBRA(%struct.TYPE_14__* %42, i32 3)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = load i32, i32* @R9, align 4
  %46 = load i32, i32* @R0, align 4
  %47 = call i32 @emitMOVLL4(%struct.TYPE_14__* %44, i32 %45, i32 1, i32 %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = call i32 @emit16(%struct.TYPE_14__* %48, i32 0)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @emit32(%struct.TYPE_14__* %50, i32 %51)
  br label %53

53:                                               ; preds = %38, %25
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = load i32, i32* @R_PR, align 4
  %56 = load i32, i32* @R10, align 4
  %57 = call i32 @emitSTS(%struct.TYPE_14__* %54, i32 %55, i32 %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %59 = load i32, i32* @R0, align 4
  %60 = call i32 @emitJSR(%struct.TYPE_14__* %58, i32 %59)
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = call i32 @emitNOP(%struct.TYPE_14__* %61)
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = load i32, i32* @R0, align 4
  %65 = load i32, i32* @R0, align 4
  %66 = load i32, i32* @OP_EXTSW, align 4
  %67 = call i32 @emitALU(%struct.TYPE_14__* %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %69 = load i32, i32* @R10, align 4
  %70 = load i32, i32* @R_PR, align 4
  %71 = call i32 @emitLDS(%struct.TYPE_14__* %68, i32 %69, i32 %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %73 = load i32, i32* @R0, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @R8, align 4
  %76 = call i32 @emitMOVLS4(%struct.TYPE_14__* %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 2
  store i32 %84, i32* %82, align 8
  ret void
}

declare dso_local i32 @INSTRUCTION_B(i32) #1

declare dso_local i32 @INSTRUCTION_CD(i32) #1

declare dso_local i32 @emitMOVLI(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @emitBRA(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @emitMOVLL4(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @emit32(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @emit16(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @emitSTS(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @emitJSR(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @emitNOP(%struct.TYPE_14__*) #1

declare dso_local i32 @emitALU(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @emitLDS(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @emitMOVLS4(%struct.TYPE_14__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
