; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lcode.c_codearith.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lcode.c_codearith.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@OP_UNM = common dso_local global i64 0, align 8
@OP_LEN = common dso_local global i64 0, align 8
@VRELOCABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, %struct.TYPE_10__*, %struct.TYPE_10__*, i32)* @codearith to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codearith(i32* %0, i64 %1, %struct.TYPE_10__* %2, %struct.TYPE_10__* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %16 = call i64 @constfolding(i64 %13, %struct.TYPE_10__* %14, %struct.TYPE_10__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %69

19:                                               ; preds = %5
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @OP_UNM, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @OP_LEN, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %30 = call i32 @luaK_exp2RK(i32* %28, %struct.TYPE_10__* %29)
  br label %32

31:                                               ; preds = %23, %19
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ %30, %27 ], [ 0, %31 ]
  store i32 %33, i32* %11, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = call i32 @luaK_exp2RK(i32* %34, %struct.TYPE_10__* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = call i32 @freeexp(i32* %41, %struct.TYPE_10__* %42)
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %46 = call i32 @freeexp(i32* %44, %struct.TYPE_10__* %45)
  br label %54

47:                                               ; preds = %32
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %50 = call i32 @freeexp(i32* %48, %struct.TYPE_10__* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %53 = call i32 @freeexp(i32* %51, %struct.TYPE_10__* %52)
  br label %54

54:                                               ; preds = %47, %40
  %55 = load i32*, i32** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @luaK_codeABC(i32* %55, i64 %56, i32 0, i32 %57, i32 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @VRELOCABLE, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @luaK_fixline(i32* %66, i32 %67)
  br label %69

69:                                               ; preds = %18, %54
  ret void
}

declare dso_local i64 @constfolding(i64, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @luaK_exp2RK(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @freeexp(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @luaK_codeABC(i32*, i64, i32, i32, i32) #1

declare dso_local i32 @luaK_fixline(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
