; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_CmpL2TPQueueForRecv.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_L2TP.c_CmpL2TPQueueForRecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CmpL2TPQueueForRecv(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %47

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_2__**
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_2__**
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %7, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %22 = icmp eq %struct.TYPE_2__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %25 = icmp eq %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %14
  store i32 0, i32* %3, align 4
  br label %47

27:                                               ; preds = %23
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @L2TP_SEQ_LT(i64 %30, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %47

37:                                               ; preds = %27
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %47

46:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45, %36, %26, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @L2TP_SEQ_LT(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
