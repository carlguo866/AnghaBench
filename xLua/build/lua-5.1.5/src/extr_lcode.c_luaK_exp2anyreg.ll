; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lcode.c_luaK_exp2anyreg.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_lcode.c_luaK_exp2anyreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@VNONRELOC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaK_exp2anyreg(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %8 = call i32 @luaK_dischargevars(%struct.TYPE_17__* %6, %struct.TYPE_16__* %7)
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @VNONRELOC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %2
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = call i32 @hasjumps(%struct.TYPE_16__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %3, align 4
  br label %59

24:                                               ; preds = %14
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %30, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %24
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @exp2reg(%struct.TYPE_17__* %36, %struct.TYPE_16__* %37, i32 %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %3, align 4
  br label %59

49:                                               ; preds = %24
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = call i32 @luaK_exp2nextreg(%struct.TYPE_17__* %51, %struct.TYPE_16__* %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %50, %35, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @luaK_dischargevars(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @hasjumps(%struct.TYPE_16__*) #1

declare dso_local i32 @exp2reg(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @luaK_exp2nextreg(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
