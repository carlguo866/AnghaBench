; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ioctl.c_tty_unthrottle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_ioctl.c_tty_unthrottle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.tty_struct*)* }

@TTY_THROTTLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tty_unthrottle(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %3 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %4 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %3, i32 0, i32 0
  %5 = call i32 @down_write(i32* %4)
  %6 = load i32, i32* @TTY_THROTTLED, align 4
  %7 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 3
  %9 = call i64 @test_and_clear_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %15, align 8
  %17 = icmp ne i32 (%struct.tty_struct*)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %20 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %22, align 8
  %24 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %25 = call i32 %23(%struct.tty_struct* %24)
  br label %26

26:                                               ; preds = %18, %11, %1
  %27 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 0
  %31 = call i32 @up_write(i32* %30)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
