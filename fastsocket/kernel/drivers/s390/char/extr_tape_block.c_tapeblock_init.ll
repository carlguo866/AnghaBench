; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_block.c_tapeblock_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_tape_block.c_tapeblock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tapeblock_major = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"tBLK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tapeblock_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @tapeblock_major, align 4
  %4 = call i32 @register_blkdev(i32 %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %1, align 4
  br label %15

9:                                                ; preds = %0
  %10 = load i32, i32* @tapeblock_major, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* @tapeblock_major, align 4
  br label %14

14:                                               ; preds = %12, %9
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %14, %7
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i32 @register_blkdev(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
