; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_debug.c_debug_getupvalue.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_debug.c_debug_getupvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @debug_getupvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_getupvalue(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = call i32 @lj_lib_checkint(%struct.TYPE_9__* %8, i32 2)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = call i32 @lj_lib_checkfunc(%struct.TYPE_9__* %10, i32 1)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i8* @lua_getupvalue(%struct.TYPE_9__* %15, i32 1, i32 %16)
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @lua_setupvalue(%struct.TYPE_9__* %19, i32 1, i32 %20)
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i8* [ %17, %14 ], [ %21, %18 ]
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @lua_pushstring(%struct.TYPE_9__* %27, i8* %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %48

33:                                               ; preds = %26
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %40, 2
  %42 = call i32 @copyTV(%struct.TYPE_9__* %34, i64 %37, i64 %41)
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  store i32 2, i32* %3, align 4
  br label %48

47:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %33, %32
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @lj_lib_checkint(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @lj_lib_checkfunc(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @lua_getupvalue(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i8* @lua_setupvalue(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @lua_pushstring(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @copyTV(%struct.TYPE_9__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
