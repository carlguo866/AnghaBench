; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_lanai_buf_size_cardorder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_lanai_buf_size_cardorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_buffer = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lanai_buffer*)* @lanai_buf_size_cardorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lanai_buf_size_cardorder(%struct.lanai_buffer* %0) #0 {
  %2 = alloca %struct.lanai_buffer*, align 8
  %3 = alloca i32, align 4
  store %struct.lanai_buffer* %0, %struct.lanai_buffer** %2, align 8
  %4 = load %struct.lanai_buffer*, %struct.lanai_buffer** %2, align 8
  %5 = call i32 @lanai_buf_size(%struct.lanai_buffer* %4)
  %6 = call i32 @get_order(i32 %5)
  %7 = load i32, i32* @PAGE_SHIFT, align 4
  %8 = sub nsw i32 %7, 10
  %9 = add nsw i32 %6, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 7
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 7, i32* %3, align 4
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @lanai_buf_size(%struct.lanai_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
