; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_libmumblelink.c_mumble_set_context.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_libmumblelink.c_mumble_set_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@lm = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mumble_set_context(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lm, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %20

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @MIN(i32 4, i64 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lm, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lm, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @memcpy(i32 %16, i8* %17, i64 %18)
  br label %20

20:                                               ; preds = %8, %7
  ret void
}

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
