; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_dispatch.c_setptmode_all.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_dispatch.c_setptmode_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@PROTO_CHILD = common dso_local global i32 0, align 4
@LJ_TPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_11__*, i32)* @setptmode_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setptmode_all(i32* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @PROTO_CHILD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %50

16:                                               ; preds = %3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %47, %16
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.TYPE_12__* @proto_kgc(%struct.TYPE_11__* %26, i32 %27)
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %8, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LJ_TPROTO, align 4
  %34 = xor i32 %33, -1
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %25
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %39 = call %struct.TYPE_11__* @gco2pt(%struct.TYPE_12__* %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @setptmode(i32* %37, %struct.TYPE_11__* %39, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %44 = call %struct.TYPE_11__* @gco2pt(%struct.TYPE_12__* %43)
  %45 = load i32, i32* %6, align 4
  call void @setptmode_all(i32* %42, %struct.TYPE_11__* %44, i32 %45)
  br label %46

46:                                               ; preds = %36, %25
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %22

50:                                               ; preds = %15, %22
  ret void
}

declare dso_local %struct.TYPE_12__* @proto_kgc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @setptmode(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_11__* @gco2pt(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
