; ModuleID = '/home/carl/AnghaBench/redis/src/extr_sds.c_sdsgrowzero.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_sds.c_sdsgrowzero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sdsgrowzero(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @sdslen(i32* %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ule i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  store i32* %13, i32** %3, align 8
  br label %37

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = sub i64 %16, %17
  %19 = call i32* @sdsMakeRoomFor(i32* %15, i64 %18)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32* null, i32** %3, align 8
  br label %37

23:                                               ; preds = %14
  %24 = load i32*, i32** %4, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = ptrtoint i32* %26 to i32
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = sub i64 %28, %29
  %31 = add i64 %30, 1
  %32 = call i32 @memset(i32 %27, i32 0, i64 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @sdssetlen(i32* %33, i64 %34)
  %36 = load i32*, i32** %4, align 8
  store i32* %36, i32** %3, align 8
  br label %37

37:                                               ; preds = %23, %22, %12
  %38 = load i32*, i32** %3, align 8
  ret i32* %38
}

declare dso_local i64 @sdslen(i32*) #1

declare dso_local i32* @sdsMakeRoomFor(i32*, i64) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @sdssetlen(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
