; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_LzmaEnc_SaveState.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_LzmaEnc.c_LzmaEnc_SaveState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@reps = common dso_local global i32 0, align 4
@posAlignEncoder = common dso_local global i32 0, align 4
@isRep = common dso_local global i32 0, align 4
@isRepG0 = common dso_local global i32 0, align 4
@isRepG1 = common dso_local global i32 0, align 4
@isRepG2 = common dso_local global i32 0, align 4
@isMatch = common dso_local global i32 0, align 4
@isRep0Long = common dso_local global i32 0, align 4
@posSlotEncoder = common dso_local global i32 0, align 4
@posEncoders = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaEnc_SaveState(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = load i32, i32* @reps, align 4
  %27 = call i32 @COPY_ARR(%struct.TYPE_5__* %24, %struct.TYPE_6__* %25, i32 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = load i32, i32* @posAlignEncoder, align 4
  %31 = call i32 @COPY_ARR(%struct.TYPE_5__* %28, %struct.TYPE_6__* %29, i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = load i32, i32* @isRep, align 4
  %35 = call i32 @COPY_ARR(%struct.TYPE_5__* %32, %struct.TYPE_6__* %33, i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = load i32, i32* @isRepG0, align 4
  %39 = call i32 @COPY_ARR(%struct.TYPE_5__* %36, %struct.TYPE_6__* %37, i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = load i32, i32* @isRepG1, align 4
  %43 = call i32 @COPY_ARR(%struct.TYPE_5__* %40, %struct.TYPE_6__* %41, i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = load i32, i32* @isRepG2, align 4
  %47 = call i32 @COPY_ARR(%struct.TYPE_5__* %44, %struct.TYPE_6__* %45, i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = load i32, i32* @isMatch, align 4
  %51 = call i32 @COPY_ARR(%struct.TYPE_5__* %48, %struct.TYPE_6__* %49, i32 %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %54 = load i32, i32* @isRep0Long, align 4
  %55 = call i32 @COPY_ARR(%struct.TYPE_5__* %52, %struct.TYPE_6__* %53, i32 %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = load i32, i32* @posSlotEncoder, align 4
  %59 = call i32 @COPY_ARR(%struct.TYPE_5__* %56, %struct.TYPE_6__* %57, i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = load i32, i32* @posEncoders, align 4
  %63 = call i32 @COPY_ARR(%struct.TYPE_5__* %60, %struct.TYPE_6__* %61, i32 %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 768, %72
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memcpy(i32 %66, i32 %69, i32 %76)
  ret void
}

declare dso_local i32 @COPY_ARR(%struct.TYPE_5__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
