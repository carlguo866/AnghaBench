; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_tsnmap.c_sctp_tsnmap_find_gap_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_tsnmap.c_sctp_tsnmap_find_gap_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32, i32, i32*, i32*)* @sctp_tsnmap_find_gap_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_tsnmap_find_gap_ack(i64* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i64*, i64** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @find_next_bit(i64* %13, i32 %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* %11, align 4
  %22 = load i32*, i32** %9, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %5
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i64*, i64** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @find_next_zero_bit(i64* %28, i32 %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32, i32* %11, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %27
  br label %40

40:                                               ; preds = %39, %23
  ret void
}

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

declare dso_local i32 @find_next_zero_bit(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
