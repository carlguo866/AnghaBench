; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3270.c_con3270_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3270.c_con3270_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.con3270 = type { i64, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@condev = common dso_local global %struct.con3270* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @con3270_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @con3270_flush() #0 {
  %1 = alloca %struct.con3270*, align 8
  %2 = alloca i64, align 8
  %3 = load %struct.con3270*, %struct.con3270** @condev, align 8
  store %struct.con3270* %3, %struct.con3270** %1, align 8
  %4 = load %struct.con3270*, %struct.con3270** %1, align 8
  %5 = getelementptr inbounds %struct.con3270, %struct.con3270* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %57

10:                                               ; preds = %0
  %11 = load %struct.con3270*, %struct.con3270** %1, align 8
  %12 = getelementptr inbounds %struct.con3270, %struct.con3270* %11, i32 0, i32 1
  %13 = call i32 @raw3270_pm_unfreeze(%struct.TYPE_3__* %12)
  %14 = load %struct.con3270*, %struct.con3270** %1, align 8
  %15 = getelementptr inbounds %struct.con3270, %struct.con3270* %14, i32 0, i32 1
  %16 = call i32 @raw3270_activate_view(%struct.TYPE_3__* %15)
  %17 = load %struct.con3270*, %struct.con3270** %1, align 8
  %18 = getelementptr inbounds %struct.con3270, %struct.con3270* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.con3270*, %struct.con3270** %1, align 8
  %23 = call i32 @con3270_wait_write(%struct.con3270* %22)
  %24 = load %struct.con3270*, %struct.con3270** %1, align 8
  %25 = getelementptr inbounds %struct.con3270, %struct.con3270* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.con3270*, %struct.con3270** %1, align 8
  %27 = call i32 @con3270_rebuild_update(%struct.con3270* %26)
  %28 = load %struct.con3270*, %struct.con3270** %1, align 8
  %29 = call i32 @con3270_update_status(%struct.con3270* %28)
  br label %30

30:                                               ; preds = %35, %10
  %31 = load %struct.con3270*, %struct.con3270** %1, align 8
  %32 = getelementptr inbounds %struct.con3270, %struct.con3270* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load %struct.con3270*, %struct.con3270** %1, align 8
  %37 = getelementptr inbounds %struct.con3270, %struct.con3270* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %2, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.con3270*, %struct.con3270** %1, align 8
  %42 = getelementptr inbounds %struct.con3270, %struct.con3270* %41, i32 0, i32 2
  %43 = call i32 @con3270_update(i32* %42)
  %44 = load %struct.con3270*, %struct.con3270** %1, align 8
  %45 = getelementptr inbounds %struct.con3270, %struct.con3270* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %2, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.con3270*, %struct.con3270** %1, align 8
  %50 = call i32 @con3270_wait_write(%struct.con3270* %49)
  br label %30

51:                                               ; preds = %30
  %52 = load %struct.con3270*, %struct.con3270** %1, align 8
  %53 = getelementptr inbounds %struct.con3270, %struct.con3270* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %2, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  br label %57

57:                                               ; preds = %51, %9
  ret void
}

declare dso_local i32 @raw3270_pm_unfreeze(%struct.TYPE_3__*) #1

declare dso_local i32 @raw3270_activate_view(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @con3270_wait_write(%struct.con3270*) #1

declare dso_local i32 @con3270_rebuild_update(%struct.con3270*) #1

declare dso_local i32 @con3270_update_status(%struct.con3270*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @con3270_update(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
