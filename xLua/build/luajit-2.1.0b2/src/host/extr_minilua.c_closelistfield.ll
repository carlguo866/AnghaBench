; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_closelistfield.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_closelistfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ConsControl = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_8__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@VVOID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ConsControl*)* @closelistfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @closelistfield(i32* %0, %struct.ConsControl* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ConsControl*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ConsControl* %1, %struct.ConsControl** %4, align 8
  %5 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %6 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VVOID, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %43

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %15 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %14, i32 0, i32 3
  %16 = call i32 @luaK_exp2nextreg(i32* %13, %struct.TYPE_8__* %15)
  %17 = load i64, i64* @VVOID, align 8
  %18 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %19 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %22 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 50
  br i1 %24, label %25, label %43

25:                                               ; preds = %12
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %28 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %35 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %38 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @luaK_setlist(i32* %26, i32 %33, i32 %36, i32 %39)
  %41 = load %struct.ConsControl*, %struct.ConsControl** %4, align 8
  %42 = getelementptr inbounds %struct.ConsControl, %struct.ConsControl* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %11, %25, %12
  ret void
}

declare dso_local i32 @luaK_exp2nextreg(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @luaK_setlist(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
