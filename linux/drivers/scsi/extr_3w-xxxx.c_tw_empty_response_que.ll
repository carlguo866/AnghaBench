; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-xxxx.c_tw_empty_response_que.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-xxxx.c_tw_empty_response_que.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TW_STATUS_RESPONSE_QUEUE_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @tw_empty_response_que to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw_empty_response_que(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @TW_STATUS_REG_ADDR(i32* %5)
  %7 = call i32 @inl(i32 %6)
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %13, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @TW_STATUS_RESPONSE_QUEUE_EMPTY, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @TW_RESPONSE_QUEUE_REG_ADDR(i32* %14)
  %16 = call i32 @inl(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @TW_STATUS_REG_ADDR(i32* %17)
  %19 = call i32 @inl(i32 %18)
  store i32 %19, i32* %3, align 4
  br label %8

20:                                               ; preds = %8
  ret void
}

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @TW_STATUS_REG_ADDR(i32*) #1

declare dso_local i32 @TW_RESPONSE_QUEUE_REG_ADDR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
