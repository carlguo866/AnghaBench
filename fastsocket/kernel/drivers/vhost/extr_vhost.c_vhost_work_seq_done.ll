; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_work_seq_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_work_seq_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32 }
%struct.vhost_work = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_dev*, %struct.vhost_work*, i32)* @vhost_work_seq_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_work_seq_done(%struct.vhost_dev* %0, %struct.vhost_work* %1, i32 %2) #0 {
  %4 = alloca %struct.vhost_dev*, align 8
  %5 = alloca %struct.vhost_work*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vhost_dev* %0, %struct.vhost_dev** %4, align 8
  store %struct.vhost_work* %1, %struct.vhost_work** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %9 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_irq(i32* %9)
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.vhost_work*, %struct.vhost_work** %5, align 8
  %13 = getelementptr inbounds %struct.vhost_work, %struct.vhost_work* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub i32 %11, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %17 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock_irq(i32* %17)
  %19 = load i32, i32* %7, align 4
  %20 = icmp sle i32 %19, 0
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
