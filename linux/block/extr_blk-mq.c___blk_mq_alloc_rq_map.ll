; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_alloc_rq_map.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c___blk_mq_alloc_rq_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { i32**, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*, i32)* @__blk_mq_alloc_rq_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__blk_mq_alloc_rq_map(%struct.blk_mq_tag_set* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_tag_set*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %10 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %13 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @blk_mq_alloc_rq_map(%struct.blk_mq_tag_set* %7, i32 %8, i32 %11, i32 %14)
  %16 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %17 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  store i32* %15, i32** %21, align 8
  %22 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %23 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

31:                                               ; preds = %2
  %32 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %33 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %34 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %42 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @blk_mq_alloc_rqs(%struct.blk_mq_tag_set* %32, i32* %39, i32 %40, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %63

48:                                               ; preds = %31
  %49 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %50 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %49, i32 0, i32 0
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @blk_mq_free_rq_map(i32* %55)
  %57 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %58 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  store i32* null, i32** %62, align 8
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %48, %47, %30
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32* @blk_mq_alloc_rq_map(%struct.blk_mq_tag_set*, i32, i32, i32) #1

declare dso_local i32 @blk_mq_alloc_rqs(%struct.blk_mq_tag_set*, i32*, i32, i32) #1

declare dso_local i32 @blk_mq_free_rq_map(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
