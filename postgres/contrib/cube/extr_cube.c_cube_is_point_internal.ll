; ModuleID = '/home/carl/AnghaBench/postgres/contrib/cube/extr_cube.c_cube_is_point_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/cube/extr_cube.c_cube_is_point_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @cube_is_point_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cube_is_point_internal(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @IS_POINT(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %29

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %25, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @DIM(i32* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @LL_COORD(i32* %16, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @UR_COORD(i32* %19, i32 %20)
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %29

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %10

28:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %23, %8
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @IS_POINT(i32*) #1

declare dso_local i32 @DIM(i32*) #1

declare dso_local i64 @LL_COORD(i32*, i32) #1

declare dso_local i64 @UR_COORD(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
