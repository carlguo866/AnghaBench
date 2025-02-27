; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/cb710/extr_sgbuf2.c_cb710_sg_dwiter_write_next_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/cb710/extr_sgbuf2.c_cb710_sg_dwiter_write_next_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_mapping_iter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cb710_sg_dwiter_write_next_block(%struct.sg_mapping_iter* %0, i32 %1) #0 {
  %3 = alloca %struct.sg_mapping_iter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.sg_mapping_iter* %0, %struct.sg_mapping_iter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %6 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %7 = call i32 @sg_dwiter_get_next_block(%struct.sg_mapping_iter* %6, i32** %5)
  %8 = call i64 @likely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  br label %17

16:                                               ; preds = %10
  br label %22

17:                                               ; preds = %13
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @sg_dwiter_write_slow(%struct.sg_mapping_iter* %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %18, %17
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @sg_dwiter_get_next_block(%struct.sg_mapping_iter*, i32**) #1

declare dso_local i32 @sg_dwiter_write_slow(%struct.sg_mapping_iter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
