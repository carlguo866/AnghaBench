; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_steal_bios.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-core.c_blk_steal_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_list = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.request = type { i64, %struct.TYPE_2__*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_steal_bios(%struct.bio_list* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.bio_list*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.bio_list* %0, %struct.bio_list** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %5 = load %struct.request*, %struct.request** %4, align 8
  %6 = getelementptr inbounds %struct.request, %struct.request* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %2
  %10 = load %struct.bio_list*, %struct.bio_list** %3, align 8
  %11 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.request*, %struct.request** %4, align 8
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.bio_list*, %struct.bio_list** %3, align 8
  %19 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32* %17, i32** %21, align 8
  br label %28

22:                                               ; preds = %9
  %23 = load %struct.request*, %struct.request** %4, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.bio_list*, %struct.bio_list** %3, align 8
  %27 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  br label %28

28:                                               ; preds = %22, %14
  %29 = load %struct.request*, %struct.request** %4, align 8
  %30 = getelementptr inbounds %struct.request, %struct.request* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load %struct.bio_list*, %struct.bio_list** %3, align 8
  %33 = getelementptr inbounds %struct.bio_list, %struct.bio_list* %32, i32 0, i32 0
  store %struct.TYPE_2__* %31, %struct.TYPE_2__** %33, align 8
  %34 = load %struct.request*, %struct.request** %4, align 8
  %35 = getelementptr inbounds %struct.request, %struct.request* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  %36 = load %struct.request*, %struct.request** %4, align 8
  %37 = getelementptr inbounds %struct.request, %struct.request* %36, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %37, align 8
  br label %38

38:                                               ; preds = %28, %2
  %39 = load %struct.request*, %struct.request** %4, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
