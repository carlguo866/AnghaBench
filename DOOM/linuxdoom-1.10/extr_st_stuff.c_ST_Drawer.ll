; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_Drawer.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_st_stuff.c_ST_Drawer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@automapactive = common dso_local global i64 0, align 8
@st_statusbaron = common dso_local global i32 0, align 4
@st_firsttime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ST_Drawer(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i64, i64* @automapactive, align 8
  %9 = icmp ne i64 %8, 0
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i1 [ true, %2 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32
  store i32 %12, i32* @st_statusbaron, align 4
  %13 = load i32, i32* @st_firsttime, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %15, %10
  %19 = phi i1 [ true, %10 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* @st_firsttime, align 4
  %21 = call i32 (...) @ST_doPaletteStuff()
  %22 = load i32, i32* @st_firsttime, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 (...) @ST_doRefresh()
  br label %28

26:                                               ; preds = %18
  %27 = call i32 (...) @ST_diffDraw()
  br label %28

28:                                               ; preds = %26, %24
  ret void
}

declare dso_local i32 @ST_doPaletteStuff(...) #1

declare dso_local i32 @ST_doRefresh(...) #1

declare dso_local i32 @ST_diffDraw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
