; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcsysimg.c_block_writeout_csum.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcsysimg.c_block_writeout_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csys_block = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"writing checksum for block\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @block_writeout_csum(i32* %0, %struct.csys_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.csys_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.csys_block* %1, %struct.csys_block** %5, align 8
  %8 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %9 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

13:                                               ; preds = %2
  %14 = call i32 @DBG(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %16 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @csum_get(i32 %17)
  %19 = call i32 @HOST_TO_LE16(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.csys_block*, %struct.csys_block** %5, align 8
  %22 = getelementptr inbounds %struct.csys_block, %struct.csys_block* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @write_out_data(i32* %20, i32* %6, i32 %23, i32* null)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %13, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @DBG(i32, i8*) #1

declare dso_local i32 @HOST_TO_LE16(i32) #1

declare dso_local i32 @csum_get(i32) #1

declare dso_local i32 @write_out_data(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
