; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lgc.c_luaC_barrierback_.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lgc.c_luaC_barrierback_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32* }

@LUA_TTABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaC_barrierback_(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_6__* @G(i32* %6)
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @isblack(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @isdead(%struct.TYPE_6__* %12, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = load i32*, i32** %4, align 8
  %18 = call %struct.TYPE_8__* @gch(i32* %17)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LUA_TTABLE, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %16, %11, %2
  %24 = phi i1 [ false, %11 ], [ false, %2 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @lua_assert(i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @black2gray(i32* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call %struct.TYPE_7__* @gco2t(i32* %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32* %31, i32** %34, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  ret void
}

declare dso_local %struct.TYPE_6__* @G(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @isblack(i32*) #1

declare dso_local i32 @isdead(%struct.TYPE_6__*, i32*) #1

declare dso_local %struct.TYPE_8__* @gch(i32*) #1

declare dso_local i32 @black2gray(i32*) #1

declare dso_local %struct.TYPE_7__* @gco2t(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
