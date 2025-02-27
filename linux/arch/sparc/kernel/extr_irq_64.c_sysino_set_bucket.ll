; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_irq_64.c_sysino_set_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_irq_64.c_sysino_set_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ino_bucket = type { i32 }
%struct.irq_handler_data = type { i32, i32 }

@nr_ivec = common dso_local global i64 0, align 8
@ivector_table = common dso_local global %struct.ino_bucket* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sysino_set_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysino_set_bucket(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_handler_data*, align 8
  %4 = alloca %struct.ino_bucket*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.irq_handler_data* @irq_get_handler_data(i32 %6)
  store %struct.irq_handler_data* %7, %struct.irq_handler_data** %3, align 8
  %8 = load %struct.irq_handler_data*, %struct.irq_handler_data** %3, align 8
  %9 = getelementptr inbounds %struct.irq_handler_data, %struct.irq_handler_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.irq_handler_data*, %struct.irq_handler_data** %3, align 8
  %12 = getelementptr inbounds %struct.irq_handler_data, %struct.irq_handler_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @sun4v_devino_to_sysino(i32 %10, i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @nr_ivec, align 8
  %17 = icmp uge i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.ino_bucket*, %struct.ino_bucket** @ivector_table, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.ino_bucket, %struct.ino_bucket* %20, i64 %21
  store %struct.ino_bucket* %22, %struct.ino_bucket** %4, align 8
  %23 = load %struct.ino_bucket*, %struct.ino_bucket** %4, align 8
  %24 = call i32 @__pa(%struct.ino_bucket* %23)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @bucket_set_irq(i32 %24, i32 %25)
  ret void
}

declare dso_local %struct.irq_handler_data* @irq_get_handler_data(i32) #1

declare dso_local i64 @sun4v_devino_to_sysino(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bucket_set_irq(i32, i32) #1

declare dso_local i32 @__pa(%struct.ino_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
