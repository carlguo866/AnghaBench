; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_bpck.c_bpck_write_regr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_bpck.c_bpck_write_regr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@cont_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32)* @bpck_write_regr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpck_write_regr(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32*, i32** @cont_map, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %10, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %39 [
    i32 0, label %20
    i32 1, label %20
    i32 2, label %29
    i32 3, label %29
    i32 4, label %29
  ]

20:                                               ; preds = %4, %4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @w0(i32 %21)
  %23 = call i32 @t2(i32 2)
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @w0(i32 %24)
  %26 = call i32 (...) @o2()
  %27 = call i32 @t2(i32 4)
  %28 = call i32 @t2(i32 1)
  br label %39

29:                                               ; preds = %4, %4, %4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @w0(i32 %30)
  %32 = call i32 @w2(i32 9)
  %33 = call i32 @w2(i32 0)
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @w0(i32 %34)
  %36 = call i32 @w2(i32 1)
  %37 = call i32 @w2(i32 3)
  %38 = call i32 @w2(i32 0)
  br label %39

39:                                               ; preds = %4, %29, %20
  ret void
}

declare dso_local i32 @w0(i32) #1

declare dso_local i32 @t2(i32) #1

declare dso_local i32 @o2(...) #1

declare dso_local i32 @w2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
