; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_khash.c_khash_put.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_khash.c_khash_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@MSG_MORE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @khash_put(%struct.TYPE_4__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = call i32 @assert(%struct.TYPE_4__* %9)
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi i1 [ true, %3 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_4__*
  %21 = call i32 @assert(%struct.TYPE_4__* %20)
  %22 = load i64, i64* %7, align 8
  %23 = icmp ule i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %41

25:                                               ; preds = %16
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* @MSG_MORE, align 4
  %32 = call i64 @send(i32 %28, i8* %29, i64 %30, i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* @errno, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %41

38:                                               ; preds = %25
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %35, %24
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i64 @send(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
