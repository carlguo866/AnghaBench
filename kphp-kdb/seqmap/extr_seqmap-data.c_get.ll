; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.item* @get(i32 %0, i32* %1) #0 {
  %3 = alloca %struct.item*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.item*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp sle i32 %10, 255
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ false, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call %struct.item* @preload_key(i32 %16, i32* %17, i32 1)
  store %struct.item* %18, %struct.item** %6, align 8
  %19 = load %struct.item*, %struct.item** %6, align 8
  %20 = getelementptr inbounds %struct.item, %struct.item* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, -2
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  store %struct.item* null, %struct.item** %3, align 8
  br label %26

24:                                               ; preds = %12
  %25 = load %struct.item*, %struct.item** %6, align 8
  store %struct.item* %25, %struct.item** %3, align 8
  br label %26

26:                                               ; preds = %24, %23
  %27 = load %struct.item*, %struct.item** %3, align 8
  ret %struct.item* %27
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.item* @preload_key(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
