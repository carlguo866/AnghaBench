; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_eq.c_ehca_poll_eq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_eq.c_ehca_poll_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { i32 }
%struct.ehca_eq = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ehca_poll_eq(%struct.ehca_shca* %0, %struct.ehca_eq* %1) #0 {
  %3 = alloca %struct.ehca_shca*, align 8
  %4 = alloca %struct.ehca_eq*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.ehca_shca* %0, %struct.ehca_shca** %3, align 8
  store %struct.ehca_eq* %1, %struct.ehca_eq** %4, align 8
  %7 = load %struct.ehca_eq*, %struct.ehca_eq** %4, align 8
  %8 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ehca_eq*, %struct.ehca_eq** %4, align 8
  %12 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %11, i32 0, i32 1
  %13 = call i8* @ipz_eqit_eq_get_inc_valid(i32* %12)
  store i8* %13, i8** %6, align 8
  %14 = load %struct.ehca_eq*, %struct.ehca_eq** %4, align 8
  %15 = getelementptr inbounds %struct.ehca_eq, %struct.ehca_eq* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* %15, i64 %16)
  %18 = load i8*, i8** %6, align 8
  ret i8* %18
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @ipz_eqit_eq_get_inc_valid(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
