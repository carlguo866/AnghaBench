; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_bf54x-keys.c_bfin_kpad_find_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_bf54x-keys.c_bfin_kpad_find_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf54x_kpad = type { i64* }
%struct.input_dev = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bf54x_kpad*, %struct.input_dev*, i64)* @bfin_kpad_find_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfin_kpad_find_key(%struct.bf54x_kpad* %0, %struct.input_dev* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bf54x_kpad*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.bf54x_kpad* %0, %struct.bf54x_kpad** %5, align 8
  store %struct.input_dev* %1, %struct.input_dev** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %37, %3
  %10 = load i64, i64* %8, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %12 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %9
  %16 = load %struct.bf54x_kpad*, %struct.bf54x_kpad** %5, align 8
  %17 = getelementptr inbounds %struct.bf54x_kpad, %struct.bf54x_kpad* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %19, %22
  %24 = getelementptr inbounds i64, i64* %18, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %15
  %29 = load %struct.bf54x_kpad*, %struct.bf54x_kpad** %5, align 8
  %30 = getelementptr inbounds %struct.bf54x_kpad, %struct.bf54x_kpad* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %41

36:                                               ; preds = %15
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %8, align 8
  br label %9

40:                                               ; preds = %9
  store i32 -1, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
