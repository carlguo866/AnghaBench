; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_synchro.c_decoder_SynchroInit.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_synchro.c_decoder_SynchroInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32* }

@.str = private unnamed_addr constant [12 x i8] c"skip-frames\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"quiet-synchro\00", align 1
@DEFAULT_NB_P = common dso_local global i32 0, align 4
@DEFAULT_NB_B = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @decoder_SynchroInit(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call %struct.TYPE_4__* @calloc(i32 1, i32 128)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %69

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 19
  store i32* %12, i32** %14, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @var_InheritBool(i32* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @var_InheritBool(i32* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 18
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* @DEFAULT_NB_P, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 16
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 17
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @DEFAULT_NB_B, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 14
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 15
  store i32 %31, i32* %35, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 13
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memset(i32 %38, i32 0, i32 16)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 12
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memset(i32 %42, i32 0, i32 16)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 11
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 9
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 10
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load i32, i32* @VLC_TICK_INVALID, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 6
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 7
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 5
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %3, align 8
  br label %69

69:                                               ; preds = %11, %10
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  ret %struct.TYPE_4__* %70
}

declare dso_local %struct.TYPE_4__* @calloc(i32, i32) #1

declare dso_local i64 @var_InheritBool(i32*, i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
