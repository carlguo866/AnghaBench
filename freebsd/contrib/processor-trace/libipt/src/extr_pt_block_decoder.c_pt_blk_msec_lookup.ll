; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_msec_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_block_decoder.c_pt_blk_msec_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_block_decoder = type { i32, i32, i32 }
%struct.pt_mapped_section = type { i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_nomap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_block_decoder*, %struct.pt_mapped_section**)* @pt_blk_msec_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_blk_msec_lookup(%struct.pt_block_decoder* %0, %struct.pt_mapped_section** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_block_decoder*, align 8
  %5 = alloca %struct.pt_mapped_section**, align 8
  %6 = alloca i32, align 4
  store %struct.pt_block_decoder* %0, %struct.pt_block_decoder** %4, align 8
  store %struct.pt_mapped_section** %1, %struct.pt_mapped_section*** %5, align 8
  %7 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %8 = icmp ne %struct.pt_block_decoder* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @pte_internal, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %38

12:                                               ; preds = %2
  %13 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %14 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %13, i32 0, i32 2
  %15 = load %struct.pt_mapped_section**, %struct.pt_mapped_section*** %5, align 8
  %16 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %17 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %20 = getelementptr inbounds %struct.pt_block_decoder, %struct.pt_block_decoder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pt_msec_cache_read(i32* %14, %struct.pt_mapped_section** %15, i32 %18, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %12
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @pte_nomap, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %38

32:                                               ; preds = %25
  %33 = load %struct.pt_block_decoder*, %struct.pt_block_decoder** %4, align 8
  %34 = load %struct.pt_mapped_section**, %struct.pt_mapped_section*** %5, align 8
  %35 = call i32 @pt_blk_msec_fill(%struct.pt_block_decoder* %33, %struct.pt_mapped_section** %34)
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %12
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %32, %30, %9
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @pt_msec_cache_read(i32*, %struct.pt_mapped_section**, i32, i32) #1

declare dso_local i32 @pt_blk_msec_fill(%struct.pt_block_decoder*, %struct.pt_mapped_section**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
