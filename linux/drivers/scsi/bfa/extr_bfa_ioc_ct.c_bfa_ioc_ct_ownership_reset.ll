; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc_ct.c_bfa_ioc_ct_ownership_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc_ct.c_bfa_ioc_ct_ownership_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc_s*)* @bfa_ioc_ct_ownership_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_ct_ownership_reset(%struct.bfa_ioc_s* %0) #0 {
  %2 = alloca %struct.bfa_ioc_s*, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %2, align 8
  %3 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %4 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @bfa_ioc_sem_get(i32 %6)
  %8 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %9 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @writel(i32 0, i32 %11)
  %13 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %14 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @readl(i32 %16)
  %18 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %19 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @writel(i32 1, i32 %21)
  %23 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %24 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @writel(i32 0, i32 %26)
  %28 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %29 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @readl(i32 %31)
  %33 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %34 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @writel(i32 1, i32 %36)
  ret void
}

declare dso_local i32 @bfa_ioc_sem_get(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
