; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_lower_barrier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid1.c_lower_barrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1conf = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1conf*)* @lower_barrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lower_barrier(%struct.r1conf* %0) #0 {
  %2 = alloca %struct.r1conf*, align 8
  %3 = alloca i64, align 8
  store %struct.r1conf* %0, %struct.r1conf** %2, align 8
  %4 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %5 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sle i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %11 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %10, i32 0, i32 2
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %15 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %19 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %18, i32 0, i32 2
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* %19, i64 %20)
  %22 = load %struct.r1conf*, %struct.r1conf** %2, align 8
  %23 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %22, i32 0, i32 1
  %24 = call i32 @wake_up(i32* %23)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
