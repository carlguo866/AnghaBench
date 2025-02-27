; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_tty.c_do_ipw_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/ipwireless/extr_tty.c_do_ipw_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_tty = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.tty_struct* }
%struct.tty_struct = type { i32* }

@TTYTYPE_MODEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_tty*)* @do_ipw_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ipw_close(%struct.ipw_tty* %0) #0 {
  %2 = alloca %struct.ipw_tty*, align 8
  %3 = alloca %struct.tty_struct*, align 8
  store %struct.ipw_tty* %0, %struct.ipw_tty** %2, align 8
  %4 = load %struct.ipw_tty*, %struct.ipw_tty** %2, align 8
  %5 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, -1
  store i64 %8, i64* %6, align 8
  %9 = load %struct.ipw_tty*, %struct.ipw_tty** %2, align 8
  %10 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %1
  %15 = load %struct.ipw_tty*, %struct.ipw_tty** %2, align 8
  %16 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.tty_struct*, %struct.tty_struct** %17, align 8
  store %struct.tty_struct* %18, %struct.tty_struct** %3, align 8
  %19 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %20 = icmp ne %struct.tty_struct* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %14
  %22 = load %struct.ipw_tty*, %struct.ipw_tty** %2, align 8
  %23 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store %struct.tty_struct* null, %struct.tty_struct** %24, align 8
  %25 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.ipw_tty*, %struct.ipw_tty** %2, align 8
  %28 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TTYTYPE_MODEM, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.ipw_tty*, %struct.ipw_tty** %2, align 8
  %34 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ipwireless_ppp_close(i32 %35)
  br label %37

37:                                               ; preds = %32, %21
  br label %38

38:                                               ; preds = %37, %14
  br label %39

39:                                               ; preds = %38, %1
  ret void
}

declare dso_local i32 @ipwireless_ppp_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
