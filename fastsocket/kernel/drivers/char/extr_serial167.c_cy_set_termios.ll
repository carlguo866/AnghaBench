; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_cy_set_termios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_cy_set_termios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_2__*, i64, i32, %struct.cyclades_port* }
%struct.TYPE_2__ = type { i32 }
%struct.cyclades_port = type { i32 }
%struct.ktermios = type { i32 }

@CRTSCTS = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.ktermios*)* @cy_set_termios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cy_set_termios(%struct.tty_struct* %0, %struct.ktermios* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.ktermios*, align 8
  %5 = alloca %struct.cyclades_port*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.ktermios* %1, %struct.ktermios** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 3
  %8 = load %struct.cyclades_port*, %struct.cyclades_port** %7, align 8
  store %struct.cyclades_port* %8, %struct.cyclades_port** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %15 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %42

19:                                               ; preds = %2
  %20 = load %struct.cyclades_port*, %struct.cyclades_port** %5, align 8
  %21 = call i32 @config_setup(%struct.cyclades_port* %20)
  %22 = load %struct.ktermios*, %struct.ktermios** %4, align 8
  %23 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CRTSCTS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %19
  %29 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CRTSCTS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %28
  %38 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %39 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %41 = call i32 @cy_start(%struct.tty_struct* %40)
  br label %42

42:                                               ; preds = %18, %37, %28, %19
  ret void
}

declare dso_local i32 @config_setup(%struct.cyclades_port*) #1

declare dso_local i32 @cy_start(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
