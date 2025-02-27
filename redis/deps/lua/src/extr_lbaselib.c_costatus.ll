; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lbaselib.c_costatus.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lbaselib.c_costatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CO_RUN = common dso_local global i32 0, align 4
@CO_SUS = common dso_local global i32 0, align 4
@CO_NOR = common dso_local global i32 0, align 4
@CO_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @costatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @costatus(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @CO_RUN, align 4
  store i32 %11, i32* %3, align 4
  br label %33

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @lua_status(i32* %13)
  switch i32 %14, label %31 [
    i32 128, label %15
    i32 0, label %17
  ]

15:                                               ; preds = %12
  %16 = load i32, i32* @CO_SUS, align 4
  store i32 %16, i32* %3, align 4
  br label %33

17:                                               ; preds = %12
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @lua_getstack(i32* %18, i32 0, i32* %6)
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @CO_NOR, align 4
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @lua_gettop(i32* %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @CO_DEAD, align 4
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @CO_SUS, align 4
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %12
  %32 = load i32, i32* @CO_DEAD, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %29, %27, %21, %15, %10
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @lua_status(i32*) #1

declare dso_local i32 @lua_getstack(i32*, i32, i32*) #1

declare dso_local i32 @lua_gettop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
