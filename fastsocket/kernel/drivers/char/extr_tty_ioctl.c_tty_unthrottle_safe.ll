; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ioctl.c_tty_unthrottle_safe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ioctl.c_tty_unthrottle_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

@TTY_THROTTLED = common dso_local global i32 0, align 4
@TTY_UNTHROTTLE_SAFE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tty_unthrottle_safe(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %5 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %4, i32 0, i32 1
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load i32, i32* @TTY_THROTTLED, align 4
  %8 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 3
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %1
  %13 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TTY_UNTHROTTLE_SAFE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %41

19:                                               ; preds = %12
  %20 = load i32, i32* @TTY_THROTTLED, align 4
  %21 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %22 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %21, i32 0, i32 3
  %23 = call i32 @__clear_bit(i32 %20, i32* %22)
  %24 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.tty_struct*)**
  %29 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %28, align 8
  %30 = icmp ne i32 (%struct.tty_struct*)* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %19
  %32 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = bitcast {}** %35 to i32 (%struct.tty_struct*)**
  %37 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %36, align 8
  %38 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %39 = call i32 %37(%struct.tty_struct* %38)
  br label %40

40:                                               ; preds = %31, %19
  br label %41

41:                                               ; preds = %40, %18
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %44 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
