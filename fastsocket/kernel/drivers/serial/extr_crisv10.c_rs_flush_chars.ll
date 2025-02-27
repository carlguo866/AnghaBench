; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_rs_flush_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_rs_flush_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64, i64, i64 }
%struct.e100_serial = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @rs_flush_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_flush_chars(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.e100_serial*, align 8
  %4 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.e100_serial*
  store %struct.e100_serial* %8, %struct.e100_serial** %3, align 8
  %9 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %10 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %39, label %13

13:                                               ; preds = %1
  %14 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %15 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %19 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %17, %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %13
  %24 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %23
  %29 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %35 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33, %28, %23, %13, %1
  br label %47

40:                                               ; preds = %33
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @local_irq_save(i64 %41)
  %43 = load %struct.e100_serial*, %struct.e100_serial** %3, align 8
  %44 = call i32 @start_transmit(%struct.e100_serial* %43)
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @local_irq_restore(i64 %45)
  br label %47

47:                                               ; preds = %40, %39
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @start_transmit(%struct.e100_serial*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
