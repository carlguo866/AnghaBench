; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_rs_hangup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_rs_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.async_struct* }
%struct.async_struct = type { i32, i32*, i32, i64, %struct.serial_state* }
%struct.serial_state = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"rs_hangup\00", align 1
@ASYNC_NORMAL_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @rs_hangup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_hangup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.async_struct*, align 8
  %4 = alloca %struct.serial_state*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 1
  %7 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  store %struct.async_struct* %7, %struct.async_struct** %3, align 8
  %8 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %9 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %8, i32 0, i32 4
  %10 = load %struct.serial_state*, %struct.serial_state** %9, align 8
  store %struct.serial_state* %10, %struct.serial_state** %4, align 8
  %11 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @serial_paranoia_check(%struct.async_struct* %11, i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %41

18:                                               ; preds = %1
  %19 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %20 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %19, i32 0, i32 4
  %21 = load %struct.serial_state*, %struct.serial_state** %20, align 8
  store %struct.serial_state* %21, %struct.serial_state** %4, align 8
  %22 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %23 = call i32 @rs_flush_buffer(%struct.tty_struct* %22)
  %24 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %25 = call i32 @shutdown(%struct.async_struct* %24)
  %26 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %27 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.serial_state*, %struct.serial_state** %4, align 8
  %29 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @ASYNC_NORMAL_ACTIVE, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %33 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %37 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %39 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %38, i32 0, i32 0
  %40 = call i32 @wake_up_interruptible(i32* %39)
  br label %41

41:                                               ; preds = %18, %17
  ret void
}

declare dso_local i64 @serial_paranoia_check(%struct.async_struct*, i32, i8*) #1

declare dso_local i32 @rs_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @shutdown(%struct.async_struct*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
