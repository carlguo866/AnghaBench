; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_ReadDemoTiccmd.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_g_game.c_G_ReadDemoTiccmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8, i8, i8 }

@demo_p = common dso_local global i64* null, align 8
@DEMOMARKER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @G_ReadDemoTiccmd(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i64*, i64** @demo_p, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @DEMOMARKER, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 (...) @G_CheckDemoStatus()
  br label %37

9:                                                ; preds = %1
  %10 = load i64*, i64** @demo_p, align 8
  %11 = getelementptr inbounds i64, i64* %10, i32 1
  store i64* %11, i64** @demo_p, align 8
  %12 = load i64, i64* %10, align 8
  %13 = trunc i64 %12 to i8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i8 %13, i8* %15, align 1
  %16 = load i64*, i64** @demo_p, align 8
  %17 = getelementptr inbounds i64, i64* %16, i32 1
  store i64* %17, i64** @demo_p, align 8
  %18 = load i64, i64* %16, align 8
  %19 = trunc i64 %18 to i8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i8 %19, i8* %21, align 1
  %22 = load i64*, i64** @demo_p, align 8
  %23 = getelementptr inbounds i64, i64* %22, i32 1
  store i64* %23, i64** @demo_p, align 8
  %24 = load i64, i64* %22, align 8
  %25 = trunc i64 %24 to i8
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 8
  %28 = trunc i32 %27 to i8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i8 %28, i8* %30, align 1
  %31 = load i64*, i64** @demo_p, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %32, i64** @demo_p, align 8
  %33 = load i64, i64* %31, align 8
  %34 = trunc i64 %33 to i8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i8 %34, i8* %36, align 1
  br label %37

37:                                               ; preds = %9, %7
  ret void
}

declare dso_local i32 @G_CheckDemoStatus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
