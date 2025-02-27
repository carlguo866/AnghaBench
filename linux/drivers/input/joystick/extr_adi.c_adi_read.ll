; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_adi.c_adi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_adi.c_adi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adi_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adi_port*)* @adi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adi_read(%struct.adi_port* %0) #0 {
  %2 = alloca %struct.adi_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.adi_port* %0, %struct.adi_port** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.adi_port*, %struct.adi_port** %2, align 8
  %6 = call i32 @adi_read_packet(%struct.adi_port* %5)
  %7 = load %struct.adi_port*, %struct.adi_port** %2, align 8
  %8 = load %struct.adi_port*, %struct.adi_port** %2, align 8
  %9 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @adi_move_bits(%struct.adi_port* %7, i64 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %39, %1
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = load %struct.adi_port*, %struct.adi_port** %2, align 8
  %20 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load %struct.adi_port*, %struct.adi_port** %2, align 8
  %30 = getelementptr inbounds %struct.adi_port, %struct.adi_port* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = call i32 @adi_decode(%struct.TYPE_2__* %34)
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %28, %18
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %15

42:                                               ; preds = %15
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @adi_read_packet(%struct.adi_port*) #1

declare dso_local i32 @adi_move_bits(%struct.adi_port*, i64) #1

declare dso_local i32 @adi_decode(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
