; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_controls2.c_Controls_InitWeapons.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_controls2.c_Controls_InitWeapons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i64 }

@bg_itemlist = common dso_local global %struct.TYPE_3__* null, align 8
@IT_WEAPON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Controls_InitWeapons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Controls_InitWeapons() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bg_itemlist, align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i64 1
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %1, align 8
  br label %4

4:                                                ; preds = %23, %0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IT_WEAPON, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %23

16:                                               ; preds = %9
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @trap_R_RegisterModel(i32 %21)
  br label %23

23:                                               ; preds = %16, %15
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 1
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %1, align 8
  br label %4

26:                                               ; preds = %4
  ret void
}

declare dso_local i32 @trap_R_RegisterModel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
