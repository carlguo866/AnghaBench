; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_zset.c_zslLexValueGteMin.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_zset.c_zslLexValueGteMin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zslLexValueGteMin(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @sdscmplex(i32 %10, i32 %13)
  %15 = icmp sgt i64 %14, 0
  %16 = zext i1 %15 to i32
  br label %25

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @sdscmplex(i32 %18, i32 %21)
  %23 = icmp sge i64 %22, 0
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %17, %9
  %26 = phi i32 [ %16, %9 ], [ %24, %17 ]
  ret i32 %26
}

declare dso_local i64 @sdscmplex(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
