; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym53c8xx_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym53c8xx_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_hcb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @sym53c8xx_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym53c8xx_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.sym_hcb*
  store %struct.sym_hcb* %6, %struct.sym_hcb** %3, align 8
  %7 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %8 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32 %12, i64 %13)
  %15 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %16 = call i32 @sym_timer(%struct.sym_hcb* %15)
  %17 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %18 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32 %22, i64 %23)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @sym_timer(%struct.sym_hcb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
