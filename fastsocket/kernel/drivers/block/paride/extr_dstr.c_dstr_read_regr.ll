; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_dstr.c_dstr_read_regr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_dstr.c_dstr_read_regr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@cont_map = common dso_local global i32* null, align 8
@P1 = common dso_local global i32 0, align 4
@P2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @dstr_read_regr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dstr_read_regr(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32*, i32** @cont_map, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %11, %16
  store i32 %17, i32* %10, align 4
  %18 = call i32 @w0(i32 129)
  %19 = load i32, i32* @P1, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = call i32 @w0(i32 17)
  br label %28

26:                                               ; preds = %3
  %27 = call i32 @w0(i32 1)
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i32, i32* @P2, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @w0(i32 %30)
  %32 = load i32, i32* @P1, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %57 [
    i32 0, label %36
    i32 1, label %46
    i32 2, label %52
    i32 3, label %52
    i32 4, label %52
  ]

36:                                               ; preds = %28
  %37 = call i32 @w2(i32 6)
  %38 = call i32 (...) @r1()
  store i32 %38, i32* %8, align 4
  %39 = call i32 @w2(i32 4)
  %40 = call i32 @w2(i32 6)
  %41 = call i32 (...) @r1()
  store i32 %41, i32* %9, align 4
  %42 = call i32 @w2(i32 4)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @j44(i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %58

46:                                               ; preds = %28
  %47 = call i32 @w0(i32 0)
  %48 = call i32 @w2(i32 38)
  %49 = call i32 (...) @r0()
  store i32 %49, i32* %8, align 4
  %50 = call i32 @w2(i32 4)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %58

52:                                               ; preds = %28, %28, %28
  %53 = call i32 @w2(i32 36)
  %54 = call i32 (...) @r4()
  store i32 %54, i32* %8, align 4
  %55 = call i32 @w2(i32 4)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %52, %46, %36
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @w2(i32) #1

declare dso_local i32 @r1(...) #1

declare dso_local i32 @j44(i32, i32) #1

declare dso_local i32 @r0(...) #1

declare dso_local i32 @r4(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
