; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_isr_msix_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_isr_msix_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32, i32* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @enic_isr_msix_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_isr_msix_err(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.enic*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.enic*
  store %struct.enic* %8, %struct.enic** %5, align 8
  %9 = load %struct.enic*, %struct.enic** %5, align 8
  %10 = call i32 @enic_msix_err_intr(%struct.enic* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.enic*, %struct.enic** %5, align 8
  %12 = getelementptr inbounds %struct.enic, %struct.enic* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @vnic_intr_return_all_credits(i32* %16)
  %18 = load %struct.enic*, %struct.enic** %5, align 8
  %19 = call i64 @enic_log_q_error(%struct.enic* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.enic*, %struct.enic** %5, align 8
  %23 = getelementptr inbounds %struct.enic, %struct.enic* %22, i32 0, i32 0
  %24 = call i32 @schedule_work(i32* %23)
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %26
}

declare dso_local i32 @enic_msix_err_intr(%struct.enic*) #1

declare dso_local i32 @vnic_intr_return_all_credits(i32*) #1

declare dso_local i64 @enic_log_q_error(%struct.enic*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
