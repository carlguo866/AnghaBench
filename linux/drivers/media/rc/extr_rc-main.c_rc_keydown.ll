; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_rc_keydown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_rc_keydown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, i64, i32, i32, i64 }

@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rc_keydown(%struct.rc_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @rc_g_keycode_from_table(%struct.rc_dev* %11, i32 %12)
  store i32 %13, i32* %10, align 4
  %14 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %15 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ir_do_keydown(%struct.rc_dev* %18, i32 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %25 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %4
  %29 = load i64, i64* @jiffies, align 8
  %30 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %31 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @nsecs_to_jiffies(i32 %32)
  %34 = add nsw i64 %29, %33
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @repeat_period(i32 %35)
  %37 = call i64 @msecs_to_jiffies(i32 %36)
  %38 = add nsw i64 %34, %37
  %39 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %40 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %42 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %41, i32 0, i32 2
  %43 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %44 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @mod_timer(i32* %42, i64 %45)
  br label %47

47:                                               ; preds = %28, %4
  %48 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %49 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %48, i32 0, i32 0
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  ret void
}

declare dso_local i32 @rc_g_keycode_from_table(%struct.rc_dev*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ir_do_keydown(%struct.rc_dev*, i32, i32, i32, i32) #1

declare dso_local i64 @nsecs_to_jiffies(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @repeat_period(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
