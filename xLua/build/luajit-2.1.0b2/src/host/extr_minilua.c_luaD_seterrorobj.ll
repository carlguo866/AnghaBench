; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_luaD_seterrorobj.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_luaD_seterrorobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"not enough memory\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"error in error handling\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i64)* @luaD_seterrorobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @luaD_seterrorobj(%struct.TYPE_6__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %28 [
    i32 4, label %8
    i32 5, label %14
    i32 3, label %20
    i32 2, label %20
  ]

8:                                                ; preds = %3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = call i32 @luaS_newliteral(%struct.TYPE_6__* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @setsvalue(%struct.TYPE_6__* %9, i64 %10, i32 %12)
  br label %28

14:                                               ; preds = %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = call i32 @luaS_newliteral(%struct.TYPE_6__* %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @setsvalue(%struct.TYPE_6__* %15, i64 %16, i32 %18)
  br label %28

20:                                               ; preds = %3, %3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, 1
  %27 = call i32 @setobj(%struct.TYPE_6__* %21, i64 %22, i64 %26)
  br label %28

28:                                               ; preds = %3, %20, %14, %8
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  ret void
}

declare dso_local i32 @setsvalue(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @luaS_newliteral(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @setobj(%struct.TYPE_6__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
