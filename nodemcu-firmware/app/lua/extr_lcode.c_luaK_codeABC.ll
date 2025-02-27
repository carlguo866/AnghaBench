; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lcode.c_luaK_codeABC.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lcode.c_luaK_codeABC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@iABC = common dso_local global i64 0, align 8
@OpArgN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaK_codeABC(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @getOpMode(i32 %11)
  %13 = load i64, i64* @iABC, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @lua_assert(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @getBMode(i32 %17)
  %19 = load i64, i64* @OpArgN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %21, %5
  %25 = phi i1 [ true, %5 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @lua_assert(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @getCMode(i32 %28)
  %30 = load i64, i64* @OpArgN, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 0
  br label %35

35:                                               ; preds = %32, %24
  %36 = phi i1 [ true, %24 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @lua_assert(i32 %37)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @CREATE_ABC(i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @luaK_code(%struct.TYPE_6__* %39, i32 %44, i32 %49)
  ret i32 %50
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @getOpMode(i32) #1

declare dso_local i64 @getBMode(i32) #1

declare dso_local i64 @getCMode(i32) #1

declare dso_local i32 @luaK_code(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @CREATE_ABC(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
