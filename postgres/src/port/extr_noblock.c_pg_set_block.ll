; ModuleID = '/home/carl/AnghaBench/postgres/src/port/extr_noblock.c_pg_set_block.c'
source_filename = "/home/carl/AnghaBench/postgres/src/port/extr_noblock.c_pg_set_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@FIONBIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_set_block(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @F_GETFL, align 4
  %7 = call i32 (i32, i32, ...) @fcntl(i32 %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @F_SETFL, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @O_NONBLOCK, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = call i32 (i32, i32, ...) @fcntl(i32 %12, i32 %13, i32 %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %22

21:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %20, %10
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @fcntl(i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
