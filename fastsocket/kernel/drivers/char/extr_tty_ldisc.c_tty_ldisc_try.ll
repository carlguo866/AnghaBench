; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_ldisc_try.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_ldisc.c_tty_ldisc_try.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_ldisc = type { i32 }
%struct.tty_struct = type { i32, i32 }

@tty_ldisc_lock = common dso_local global i32 0, align 4
@TTY_LDISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_ldisc* (%struct.tty_struct*)* @tty_ldisc_try to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_ldisc* @tty_ldisc_try(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tty_ldisc*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @tty_ldisc_lock, i64 %5)
  store %struct.tty_ldisc* null, %struct.tty_ldisc** %4, align 8
  %7 = load i32, i32* @TTY_LDISC, align 4
  %8 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.tty_ldisc* @get_ldisc(i32 %15)
  store %struct.tty_ldisc* %16, %struct.tty_ldisc** %4, align 8
  br label %17

17:                                               ; preds = %12, %1
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* @tty_ldisc_lock, i64 %18)
  %20 = load %struct.tty_ldisc*, %struct.tty_ldisc** %4, align 8
  ret %struct.tty_ldisc* %20
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.tty_ldisc* @get_ldisc(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
