; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_mbx_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib9000.c_dib9000_mbx_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib9000_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dib9000_state*, i64, i32)* @dib9000_mbx_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dib9000_mbx_count(%struct.dib9000_state* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.dib9000_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.dib9000_state* %0, %struct.dib9000_state** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* %6, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.dib9000_state*, %struct.dib9000_state** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @dib9000_read_word_attr(%struct.dib9000_state* %11, i32 1028, i32 %12)
  %14 = ashr i32 %13, 10
  %15 = sext i32 %14 to i64
  %16 = and i64 %15, 31
  store i64 %16, i64* %4, align 8
  br label %24

17:                                               ; preds = %3
  %18 = load %struct.dib9000_state*, %struct.dib9000_state** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @dib9000_read_word_attr(%struct.dib9000_state* %18, i32 1044, i32 %19)
  %21 = ashr i32 %20, 8
  %22 = sext i32 %21 to i64
  %23 = and i64 %22, 127
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %17, %10
  %25 = load i64, i64* %4, align 8
  ret i64 %25
}

declare dso_local i32 @dib9000_read_word_attr(%struct.dib9000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
