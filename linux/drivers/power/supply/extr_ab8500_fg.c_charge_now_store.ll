; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_charge_now_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_fg.c_charge_now_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_fg = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500_fg*, i8*, i64)* @charge_now_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @charge_now_store(%struct.ab8500_fg* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ab8500_fg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ab8500_fg* %0, %struct.ab8500_fg** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @kstrtoul(i8* %10, i32 10, i64* %8)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %4, align 4
  br label %33

16:                                               ; preds = %3
  %17 = load i64, i64* %8, align 8
  %18 = trunc i64 %17 to i32
  %19 = load %struct.ab8500_fg*, %struct.ab8500_fg** %5, align 8
  %20 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.ab8500_fg*, %struct.ab8500_fg** %5, align 8
  %23 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.ab8500_fg*, %struct.ab8500_fg** %5, align 8
  %26 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ab8500_fg*, %struct.ab8500_fg** %5, align 8
  %29 = getelementptr inbounds %struct.ab8500_fg, %struct.ab8500_fg* %28, i32 0, i32 0
  %30 = call i32 @queue_delayed_work(i32 %27, i32* %29, i32 0)
  %31 = load i64, i64* %7, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %16, %14
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
