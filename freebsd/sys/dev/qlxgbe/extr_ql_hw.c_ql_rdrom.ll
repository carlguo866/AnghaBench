; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxgbe/extr_ql_hw.c_ql_rdrom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxgbe/extr_ql_hw.c_ql_rdrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32*)* @ql_rdrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_rdrom(i32* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %42, %3
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @ql_rd_flash32(i32* %28, i32 %29, i32* %12)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %50

34:                                               ; preds = %27
  %35 = load i32, i32* %12, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %45, %33
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @ql_rd_flash32(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
